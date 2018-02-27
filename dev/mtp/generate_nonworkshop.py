#!/usr/bin/python

import re

maplist = []

f = open("raw.txt","r")
for line in f:
	if bool(re.search('workshop\/', line)):
		maplist.append(line)
f.close()

for line in maplist:
	newline = re.sub('workshop\/', '', line)
	newline = re.sub('\.(.*?)\.', '.', newline)
	newline = re.sub('\.\.', '.', newline)
	f = open("raw.txt", "a")
	f.write(newline)
	f.close()