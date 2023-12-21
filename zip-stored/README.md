# ZIP_STORED

## Summary

- Cryptography with PKZIP known plaintext attack

## Files

- [ZIP_STORED.zip](ZIP_STORED.zip)

## Steps

1. Examine the contents of the ZIP file
   1. 2 files; both encrypted with ZIPCRYPTO
      1. challenge_details.txt
      2. flag.txt
2. `challenge_details.txt` sounds like it could be the challenge detail that's provided by the challenge itself, thus a known plaintext attack can be carried out
3. Copy and paste the challenge details to a plaintext file
4. Use a tool that automates the PKZIP known plaintext attack like [bkcrack](https://github.com/kimci86/bkcrack) and attempt to crack the encrypted challenge_details.txt file with the plaintext file
5. Obtain the encryption keys and decrypt the `flag.txt` file
6. Refer to [solve script](solve.sh) to do this programatically
