#!/usr/bin/python

start = False
count = 0
total = 0

f = open("raw.txt","r")
for line in f:
    total = total + 1
    if start:
        count = count + 1
    if line == '"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz.bsp" "1"\n':
        start = True
f.close()

print('total lines: ' + str(total))
print('total commited lines: ' + str(total - count))
print('changes to raw: ' + str(count))
print('changes after commit: ' + str(count * 2))