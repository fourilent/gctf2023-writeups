# XORing Through

## Summary

- Cryptography with reversible XOR algorithm and known plaintext

## Files

- [flag.png](flag.png)
- [xoring_through.py](xoring_through.py)

## Steps

1. Examine the script provided in the challenge
   1. The script uses a loop to generate a key with a length as long as the flag in bytes
      1. The first secret is obtained by randomly generating 56 bytes
      2. The secret is hashed with MD5 and the digest is used as the first part of the key
      3. The subsequent parts of the keys uses the MD5 digest generated by the previous loop iteration as the secret, which gets hashed again
   2. XORs generated secret against the flag image
2. Only the initial secret (generated by `token_bytes(56)`) is the dynamic factor in the algorithm; however, the MD5 digest of that secret can be obtained by XORing the encrypted image with the plaintext version
3. The file header of a PNG file is the same as all PNG files, so we can take a regular PNG file and extract the header, then XOR it against the header of the encrypted flag image to get the first part of the key
4. The same algorithm can be used to obtain the original flag as XOR is reversible
5. Refer to [solver script](solver.py) to do this programatically with annotations

![flag-out.png](flag-out.png)