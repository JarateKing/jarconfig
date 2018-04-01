#!/usr/bin/python

start = False
count = 0
total = 0

f = open("raw.txt","r")
for line in f:
    total = total + 1

    # count if it's past the last alphabetical entry
    if start:
        count = count + 1

    # if it finds the last alphabetical entry, start counting
    if line == '"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz.bsp" "1"\n':
        start = True
f.close()

# print metrics
print('total maps: ' + str(total))
print('total commited maps: ' + str(total - count))
print('changes to raw maps: ' + str(count))
print('changes after commit: ' + str(count * 2))