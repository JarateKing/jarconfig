#!/usr/bin/python

# finds new maps found by searching what servers are running
# appends them to an existing list, if it's not already there
# created by JarateKing

# source server queries library
import valve.source
import valve.source.a2s
import valve.source.master_server

# get list of maps already present
existing = []
f = open("raw.txt","r")
for line in f:
    existing.append(line)
f.close()

# continuously add new maps found from servers
while True:
    with valve.source.master_server.MasterServerQuerier(timeout=10) as msq:
        try:

            # Given the master server, query all servers running tf2
            for address in msq.find(region=[u"all"], gamedir=u"tf"):
                try:

                    # Given a server, find out what map it's running and append it
                    with valve.source.a2s.ServerQuerier(address, 1) as server:
                        info = server.info()
                        mapline = '"{map}.bsp" "1"'.format(**info)
                        if not mapline + '\n' in existing:
                            f = open("raw.txt","a")
                            f.write(mapline + '\n')
                            f.close()
                            print(mapline)
                            existing.append(mapline + '\n')

                # if the server times out
                except valve.source.NoResponseError:
                    print("--- server did not respond")
                    pass
                except Exception:
                    print("-- server ran into other exceptions")
                    pass
        # signify every server has been scanned that passthrough
            print("---")

        # if the master server times out
        except valve.source.NoResponseError:
            print("--- master server request timed out!")
            pass
        except Exception:
            print("--- master server ran into other exceptions")
            pass
