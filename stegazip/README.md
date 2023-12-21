# StegaZip

## Summary

- Steganography with embedded files in file
- Steganography with embedded string in file

## Files

- [DapperMonke.jpg](DapperMonke.jpg)

## Steps

1. Use [binwalk](https://github.com/ReFirmLabs/binwalk) to extract files embedded in DapperMonke.jpg
    - Encrypted ZIP file should have been extracted
2. Use `strings` to identify any strings embedded in DapperMonke.jpg. The password for the ZIP file is found (`5t3g4n0p1c`)
3. Extract all the files in the ZIP file and use a duplicate file finder/remover tool to remove all the duplicates
4. Use `strings` on the remaining files and Flag666.png should have the flag
5. Refer to [solve script](solve.sh) for the commands to do this programatically
