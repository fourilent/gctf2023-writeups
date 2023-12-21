# QR Code SOS

## Summary

- Steganography in text file with whitespace and binary encoding
- Forensics with image rebuilding

## Files

- [QR_Code_SOS.zip](QR_Code_SOS.zip)

## Steps

1. Extract all the files from the ZIP file
   1. [note.txt](note.txt) is hidden in a directory called `.~` in the archive
2. Use `cat -e note.txt` to identify some hidden whitespace characters at the end of file
3. Replace `0x20` with 0 and `0xe2 0x80 0x83` with 1
4. Decode the binary string to ASCII to get second half of the flag
5. [CyberChef recipe](https://gchq.github.io/CyberChef/#recipe=Find_/_Replace(%7B'option':'Regex','string':'.%2B%5C%5C.%5C%5Cn'%7D,'',true,false,true,false)To_Hex('Space',0)Find_/_Replace(%7B'option':'Regex','string':'20'%7D,'30',true,false,true,false)Find_/_Replace(%7B'option':'Regex','string':'e2%2080%2083'%7D,'31',true,false,true,false)From_Hex('Auto')From_Binary('Space',8)&input=U29tZSBjb2xvcnMgSSBwYWludCBmb3Igd2hpdGUgYW5kIHNvbWUgY29sb3JzIEkgcGFpbnQgZm9yIGJsYWNrLgog4oCDICDigIPigIPigIPigIMg4oCD4oCDICAg4oCDICAg4oCD4oCDICAg4oCDIOKAg%2BKAg%2BKAgyDigIMg4oCDICDigIMgIOKAgyAgIOKAg%2BKAgyAgIOKAg%2BKAgyAg4oCD4oCDIOKAgyAgIOKAg%2BKAg%2BKAgyDigIMgICAg4oCD4oCDICAg4oCDICDigIPigIMgICAgIOKAg%2BKAgyDigIPigIPigIMgICDigIPigIMgIOKAgyAg4oCD4oCDIOKAg%2BKAg%2BKAgyAgIOKAg%2BKAg%2BKAgyAgICDigIPigIMgICAg4oCDIOKAg%2BKAgyAg4oCD4oCDICDigIPigIMgICDigIMgICDigIPigIMgIOKAg%2BKAgyDigIPigIPigIPigIPigIMg4oCD) to do this
6. Based on the hint in the node, extract groups of colors from [Randomize.png](Randomize.png) as same-sized transparent PNG files
7. For each color, create a fully white and fully black version
   - See the `layers/` directory for examples
8. Generate all possible combinations of colors and paste them onto the original or background of the image
9. Attempt to read every combination with a QR code reader until the first half of the flag is found
10. Refer to [solver script](solver.py) to do this programatically with annotations
