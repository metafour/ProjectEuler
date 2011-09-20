#!/usr/bin/python

largest = 0

for x in range(100,1000):
	for y in range(100,1000):
		integer = x * y
		revinteger = int(str(integer)[::-1])
   		if integer == revinteger:
   			if integer > largest:
				largest = integer
print "%d " % largest
#print "%d => %d" % (integer, revintegervinteger),