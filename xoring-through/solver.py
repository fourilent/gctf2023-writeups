from hashlib import md5

from Crypto.Util.strxor import strxor

flag = open("flag.png", "rb").read()
# Signature of a PNG file (first 16 bytes)
png_file_sig = b"\x89\x50\x4e\x47\x0d\x0a\x1a\x0a\x00\x00\x00\x0d\x49\x48\x44\x52"
# First 16 bytes of the encrypted flag image
flag_file_sig = flag[:16]
# Get the initial key used by the original XOR cipher
secret = strxor(png_file_sig, flag_file_sig)

# The rest is mostly stuff from the original script
length = len(flag)
blocks = length // 16 + 1
keys = secret

for _ in range(blocks):
    secret = md5(secret).digest()
    keys += secret

output = "flag-out.png"
open(output, "wb").write(strxor(keys[:length], flag))
print(f"Decrypted flag image written to {output}")
