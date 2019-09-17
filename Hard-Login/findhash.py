# findhash.py
# this will find plaintext that matches the first characters of an md5 hash

import hashlib

target = '0e'
n = 0
#word = "R34llyG00dP455sW0rd"
while True:
    plaintext = str(n)
    #plaintext = str(word) + str(n)
    hash = hashlib.md5(plaintext.encode('ascii')).hexdigest()
    #if hash[2:].isdigit():
    if hash[:2] == target and hash[2:].isdigit():
        #print(hash[:2] + '   ' + hash[30:])
        print('plaintext:"' + plaintext + '", md5:' + hash)
        #break
    n = n + 1
