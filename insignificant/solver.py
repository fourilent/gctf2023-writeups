import re

from PIL import Image

FLAG_REGEX: str = r"GCTF23{.*}"
FILENAME: str = "chall.png"
BITS_TO_EXTRACT: int = 8 * 1000


def main():
    with Image.open(FILENAME) as image:
        width, height = image.size
        # Get all pixels in the image as an array of RGBA values row by row
        pixels = [
            list(image.getpixel((x, y))) for x in range(width) for y in range(height)
        ]
    # Extract LSBs from each RGB value
    lsb = [byte & 1 for pixel in pixels for byte in pixel[:3]]
    # Trim and convert LSBs to strings (for later)
    lsb = [str(bit) for bit in lsb[:BITS_TO_EXTRACT]]
    # Split the LSBs into bytes (8 bits each)
    flag_bytes = ["".join(lsb[i : i + 8]) for i in range(0, len(lsb), 8)]
    # Convert the bytes to ASCII characters
    flag = "".join(chr(int(byte, 2)) for byte in flag_bytes)
    # Find the flag in the string
    flag = re.search(FLAG_REGEX, flag).group()
    print(flag)


if __name__ == "__main__":
    main()
