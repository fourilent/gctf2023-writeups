import re
import wave

FLAG_REGEX: str = r"GCTF23{.*}"
FILENAME: str = "univ3rs4l_c0ll4ps3.wav"
BITS_TO_EXTRACT: int = 8 * 1000


def main():
    with wave.open(FILENAME, "rb") as wav:
        # Read the frames of the audio file
        frame_bytes = bytearray(wav.readframes(wav.getnframes()))
    # Extract the LSBs from the frames
    lsb = [frame_bytes[i] & 1 for i in range(len(frame_bytes))]
    # Trim the LSBs and convert them to strings (for later)
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
