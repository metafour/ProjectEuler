#!/usr/bin/python

sum = 0

for i in range(1000):
    if i % 3 == 0:
        print "sum: %d \t i: %d \t" % (sum, i),
        sum += i
        print "sum: %d" % sum
    elif i % 5 == 0:
        print "sum: %d \t i: %d \t" % (sum, i),
        sum += i
        print "sum: %d" % sum
        
print sum