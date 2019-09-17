# Recursion

This is another reversing challenge. A little more complicated than the last, but still a ‘beginner’ level challenge. You don’t actually have to do any real reversing.  

The player is given the binary file and the following challenge text:
```
To get the key enter the key to get the key enter the key to get the key enter the key to get the key enter the key to get the key enter the key to get the key enter the key to get the key enter the key to get the key enter the key to get the key enter the key to get the key enter the key to get the key enter the key to get the key enter the key to get the key enter the key to get the key enter the key to get the key enter the key to get the key enter the key to get the key enter the key to get the key enter the key to get the key enter the key to get the key enter the key to get the key enter the key.
 
(Download the attached binary and find the flag, don't forget to extract the file from the tarball)
```
The name of the challenge is not really a clue for this one, just a play on the fact that you have to enter the key to get the key. Get it?

You can find the key by running the objdump command:

```
$ objdump -s -j .rodata recursion

recursion:     file format elf64-x86-64

Contents of section .rodata:
 2000 01000200 00000000 546f2067 65742074  ........To get t
 2010 68652066 6c616720 656e7465 72207468  he flag enter th
 2020 6520666c 61672074 6f206765 74207468  e flag to get th
 2030 6520666c 61673a20 000a0072 00660064  e flag: ...f.u.n
 2040 00730065 0063007b 00390038 00370036  .s.e.c.{.9.8.7.6
 2050 00350034 00330032 00310030 007d0047  .5.4.3.2.1.0.}.G
 2060 6f6f6420 4a6f6221 20546865 20666c61  ood Job! The fla
 2070 67206973 3a202573 0a005772 6f6e6721  g is: %s..Wrong!
 2080 20547279 20616761 696e2100            Try again!.    
```

The “strings” command won’t work on this one because the flag is actually stored as separate “char” variables. But this command displays the “rodata” or read only data in the executable, which contains the flag separated by dots. Remove the dots and you get the flag: 
funsec{987654321}

Note: I used this as the flag because any repeating chars wouldn’t actually show up in .rodata - it was a bit of a cheap hack to make the flag easier to find.
