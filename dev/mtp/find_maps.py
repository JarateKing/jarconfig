#!/usr/bin/python

# finds new maps found by searching what servers are running
# appends them to an existing list, if it's not already there
# created by JarateKing

import valve.source
import valve.source.a2s
import valve.source.master_server

existing = []

# get list of maps already present
f = open("raw.txt","r")
for line in f:
    existing.append(line)
f.close()

# continuously add new maps found from servers
while True:
    with valve.source.master_server.MasterServerQuerier(timeout=10) as msq:
        try:
            for address in msq.find(region=[u"all"], gamedir=u"tf"):
                try:
                    with valve.source.a2s.ServerQuerier(address, 1) as server:
                        info = server.info()
                        mapline = '"{map}.bsp" "1"'.format(**info)
                        if not mapline + '\n' in existing:
                            f = open("raw.txt","a")
                            f.write(mapline + '\n')
                            f.close()
                            print(mapline)
                            existing.append(mapline + '\n')
                except valve.source.NoResponseError:
                    pass
            print("---")
        except valve.source.NoResponseError:
            print "Master server request timed out!"
        except Exception:
            pass
