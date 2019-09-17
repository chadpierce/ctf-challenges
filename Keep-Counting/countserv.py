#!/usr/bin/env python3
from random import randrange
import sys
 
n = 1
while n < 1000:
    s = ''
    i = 0
    r = randrange(2,7)
    while i < r:
        i += 1
        n += 1
        if r == i:
            s = s + str(n)
        else:
            s = s + str(n) + '\n'
    print(s)
    u = input("enter the next number: ")
    if u.isdigit():
        if (int(u) == (n + 1)):
            continue
        else:
            print("oh no! wrong number :(")
            #break
            sys.exit(0)
    else:
        print("numeric characters only! goodbye!")
        sys.exit(0)
print("splendid! here is your flag: flag{hope_you_did_not_do_that_by_hand}")
sys.exit(0)
