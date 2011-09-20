#!/usr/bin/python

a = 1
b = 1
sum = 0

print "%d, %d, " % (a, b)

while a+b < 4000000:
    
    next = a + b
    a = b
    b = next
    
    if b % 2 == 0:
        sum += b
    
print sum