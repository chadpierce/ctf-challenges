# Fun City

This is simple reversing challenge. You don’t actually have to do any reversing for this one, though.  

See the writeup pdf for more info.  

### Here is the method I used to generate the flag from the password and a string of hex values

First I took the flag: funsec{always_look_for_strings}  
And a password: letshavesomefun

I used cyberchef to convert the strings to hex. For example, the first six characters of each would be:  
```
"funsec" becomes "66 75 6e 73 65 63"  
"letsha" becomes "6c 65 74 73 68 61"  
```

I then used the xor calculator at http://xor.pw to xor these 2 strings, which gave this result:  
`a101a000d02`

For the C application I them reformated the string in hex format adding the leading 0 and '\x' notation:  
`"\x0a\x10\x1a\x00\x0d\x02\x0d\x04\x1f\x18\x0c\x1c\x15\x2a\x02\x03\x0a\x1f\x2c\x0e\x0e\x04\x3a\x00\x1b\x1f\x0c\x08\x12\x1d\x11";`

At this point I was able to xor the password "letshavesomefun" with the hex string above, and repeated the password characters
as needed in the loop since the password is shorter than the flag. This obfuscates the actual flag if you run "strings", but allows
you to see the password.  