# Find the STREAMer

## Summary

- Steganography with NTFS Alternate Data Stream
- Steganography with image-based Steghide

## Files

- [find_the_streamer.rar](find_the_streamer.rar)

## Steps

1. Unzip (Unrar?) the .rar file
2. Run `Get-Item * -Stream *` to identify any alternate data streams in the directory (Powershell)
3. Run `Get-Content .\streamed.png:streamer.txt` to read the alternate data stream file
4. Run steghide with `lying` as the passphrase
5. Extracted file is the flag
6. Refer to [solve script](solve.sh) for Linux/MacOS equivalent commands
