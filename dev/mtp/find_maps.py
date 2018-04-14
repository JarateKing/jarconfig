#!/usr/bin/python

# finds new maps found by searching what servers are running
# appends them to an existing list, if it's not already there
# created by JarateKing

# source server queries library
import valve.source
import valve.source.a2s
import valve.source.master_server
import sys

# help docs function
def printHelp():
    "this prints the help message"
    print("Finds new maps found by searching what servers are running")
    print("Appends them to an existing list, if it's not already there")
    print("Created by JarateKing")
    return

# handle flags
filename = "raw.txt"
isErrorReporting = True
isShowingMaps = True
isPrinting = True
isCounting = False
args = iter(sys.argv[1:])

for arg in args:
    if arg == "-noerror":
        isErrorReporting = False
    elif arg == "-silent":
        isPrinting = False
    elif arg == "-nomaps":
        isShowingMaps = False
    elif arg == "-count":
        isCounting = True
    elif arg == "-file":
        _ = next(args)
        filename = _
    elif arg == "-help" or arg == "-h":
        printHelp()
    else:
        print("Unknown argument: " + arg)

# get list of maps already present
existing = []
count = 0
f = open(filename,"r")
for line in f:
    existing.append(line)
    count = count + 1
f.close()

# continuously add new maps found from servers
while True:
    with valve.source.master_server.MasterServerQuerier(timeout=10) as msq:
        try:

            # Given the master server, query all servers running tf2
            for address in msq.find(region=[u"all"], gamedir=u"tf"):
                try:

                    # Given a server, find out what map it's running and append it
                    with valve.source.a2s.ServerQuerier(address, 3) as server:
                        info = server.info()
                        mapline = '"{map}.bsp" "1"'.format(**info)
                        if not mapline + '\n' in existing:
                            f = open(filename,"a")
                            f.write(mapline + '\n')
                            f.close()
                            if isShowingMaps and isPrinting:
                                if isCounting:
                                    print(str(count) + ": " + mapline)
                                    count = count + 1
                                else:
                                    print(mapline)
                            existing.append(mapline + '\n')

                # if the server times out
                except valve.source.NoResponseError:
                    if isErrorReporting and isPrinting:
                        print("--- server did not respond")
                    pass
                except Exception:
                    if isErrorReporting and isPrinting:
                        print("--- server ran into other exceptions")
                    pass
        # signify every server has been scanned that passthrough
            if isPrinting:
                print("---")

        # if the master server times out
        except valve.source.NoResponseError:
            if isErrorReporting and isPrinting:
                print("--- master server request timed out!")
            pass
        except Exception:
            if isErrorReporting and isPrinting:
                print("--- master server ran into other exceptions")
            pass
