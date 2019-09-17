#!/usr/bin/env python3
import binascii

sbox_values = [11, 6, 8, 15, 9, 13, 14, 0, 7, 3, 12, 4, 10, 2, 1, 5]

def str_to_bin(plaintext=''):
    # converts string to list of ascii binaries 
    return [bin(ord(x))[2:].zfill(8) for x in plaintext]

def bin_to_str(bits=None):
    # converts list of ascii binaries to string
    return ''.join([chr(int(x, 2)) for x in bits])

def bin_to_dec(bits):
    # converts 4 bit binary to decimal
    dec = 0
    if bits[0] == '1': dec = 8
    if bits[1] == '1': dec += 4
    if bits[2] == '1': dec += 2
    if bits[3] == '1': dec += 1
    return dec

def dec_to_bin(dec):
    # converts decimal (0-15) to 4 bit binary
    bits = list('0000')
    if dec - 8 >= 0:
        dec -= 8
        bits[0] = '1'
    if dec - 4 >= 0:
        dec -= 4
        bits[1] = '1'
    if dec - 2 >= 0:
        dec -= 2
        bits[2] = '1'
    if dec - 1 >= 0:
        bits[3] = '1'
    return ''.join(bits)

def sbox_reverse(s):
    # reverses sbox substituion 
    for i in sbox_values:
        if s == i:
            return sbox_values.index(i)

def decrypt(cipher):
    # TODO write decrpytion function
    plaintext = ''
    plaintext_char_list = []
    bin_chars = [cipher[i:i+8] for i in range(0, len(cipher), 8)]
    unsboxed = []
    bin_ascii_key = str_to_bin(key)

    for b in bin_chars:
        bits = []
        bin_char = []
        bits.append(b[:4]), bits.append(b[4:])
        for bit in bits:
            d = bin_to_dec(bit)
            for _ in range(4):
                d = sbox_reverse(d)
            s = d
            bin_char.append(dec_to_bin(s))
        bin_char = ''.join(bin_char)
        unsboxed.append(bin_char)

    xored_char = ''
    for i in range(len(unsboxed)):
        xored_char = ''
        for j in range(0,8):
            xored_char += (str(int(unsboxed[i][j]) ^ int(bin_ascii_key[i][j])))
        plaintext_char_list.append(xored_char)
    plaintext = bin_to_str(plaintext_char_list)
    return plaintext
    #print('decrypted:', plaintext)

cipher = input('enter a cipher:')
# plaintext = 'hellotherehowareyou'
key = input('enter a key:')
#key = 'passwordopensesame1'
#print('cipher:', cipher, ' key:', key)
plaintext = decrypt(cipher)
print('plaintext:', plaintext)
#print('```````````````````````````')
#decrypt(cipher)
