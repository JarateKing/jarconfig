#!/usr/bin/python

# finds workshop maps in a file and appends their non-workshop versions
# created by JarateKing

# regex
import re

# get list of workshop maps
maplist = []
f = open("raw.txt","r")
for line in f:
	if bool(re.search('workshop\/', line)):
		maplist.append(line)
f.close()

# create their non-workshop versions
for line in maplist:
	# remove "workshop/"
	newline = re.sub('workshop\/', '', line)
	# remove ".ugc12345." of any length
	newline = re.sub('\.(.*?)\.', '.', newline)
	# append to file
	f = open("raw.txt", "a")
	f.write(newline)
	f.close()