# spamton's dessatisfactory sale

## Summary

- Cryptography with modern cipher and hinted keys

## Files

- [cipher.txt](cipher.txt)

## Steps

no idea how 4 different teams figured out this dumb challenge, mine did not

1. Input the cipher into [Boxentriq's Hexadecimal Analysis tool](https://www.boxentriq.com/code-breaking/hex-analysis)
2. Under the Statistics tab, see that the zeroes make up 51.56% and the ones make up 48.44%. As the percentage is close to 50/50, it indicates a modern cipher was used to encrypt the message
3. From the challenge title, dissatisfactory has been misspelled to "dessatisfactory", which could indicate DES being used
4. In the [challenge details](challenge_details.txt), the string "SPAMTONS" and "INSANITY" has been enclosed with [[ ]], which could indicate them being the key and IV
5. Decrypt the cipher with DES-CBC with the key as SPAMTONS and IV as INSANITY in UTF-8, and output it in raw to get the flag
6. [CyberChef recipe](https://gchq.github.io/CyberChef/#recipe=DES_Decrypt(%7B'option':'UTF8','string':'SPAMTONS'%7D,%7B'option':'UTF8','string':'INSANITY'%7D,'CBC','Hex','Raw')&input=MTZjMWUwNTI1ZjE1ZjU0ZDhkNTM2NzU5NmFiYzJlODE5OTEzMGE2ZWEyNTdhMjk3) to do this
