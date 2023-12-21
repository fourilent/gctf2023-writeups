import itertools
import os

import cv2
from PIL import Image
from tqdm import tqdm


def generate_combinations():
    """
    Generate all possible combinations of colors' black and white filenames
    """
    # Get all files that end with -b.png or -w.png
    layers = [
        file
        for file in os.listdir("layers")
        if file.endswith("-b.png") or file.endswith("-w.png")
    ]
    # Get all colors
    colors = [layer.split("-")[0] for layer in layers]
    colors = list(set(colors))
    # This is a very inefficient way of generating combinations plz PR
    combinations = [
        perm
        for perm in itertools.permutations(layers, 6)
        if all(perm[i].startswith(color) for i, color in enumerate(colors))
    ]
    print(f"Generated {len(combinations)} combinations")
    return combinations


def generate_images(combinations):
    """
    Generate images from combinations
    """
    # Create combined directory if it doesn't exist or clear it if it does
    if not os.path.exists("combined"):
        os.makedirs("combined")
    elif len(os.listdir("combined")) > 0:
        for file in os.listdir("combined"):
            os.remove(f"combined/{file}")

    for count, layers in enumerate(tqdm(combinations, desc="Generating Images")):
        # Open all layers as PIL RGBA images
        layers = (Image.open(f"layers/{layer}").convert("RGBA") for layer in layers)
        combined = Image.open("layers/bg.png").convert("RGBA")
        # Paste layers on top of each other
        for layer in layers:
            combined.paste(layer, (0, 0), layer)
        # Pad the image with white pixels and resize it or else the QR code won't be detected
        padded = Image.new(
            "RGBA", (combined.width + 2, combined.height + 2), (255, 255, 255, 255)
        )
        padded.paste(combined, (1, 1))
        padded = padded.resize(
            (padded.width * 5, padded.height * 5), resample=Image.NEAREST
        )
        padded.save(f"combined/combined_{count}.png")


def read_qr():
    """
    Read QR code from images
    """
    # Get all images in combined directory
    images = os.listdir("combined")
    pbar = tqdm(total=len(images), desc="Reading QR Codes")
    for image in images:
        # Read image as OpenCV image
        cv_image = cv2.imread(f"combined/{image}")
        # Attempt to decode QR code in image
        qr = cv2.QRCodeDetector()
        data, _, _ = qr.detectAndDecode(cv_image)
        # Break when a valid QR code is detected
        if data:
            pbar.close()
            print(f"{image}: {data}")
            break
        pbar.update()
    return data


def decipher_note():
    """
    Deciphers note.txt
    """
    with open("note.txt", "rb") as note:
        data = note.read()
    # Get the ciphered text and convert the whitespaces to binary bits
    data = (
        data.split(b"\n")[1].replace(b" ", b"0").replace(b"\xe2\x80\x83", b"1").decode()
    )
    # Split the binary bits into ASCII bytes
    flag_bytes = [data[i : i + 8] for i in range(0, len(data), 8)]
    # Convert bytes to ASCII characters
    flag = "".join(chr(int(byte, 2)) for byte in flag_bytes)
    print(f"Deciphered note: {flag}")
    return flag


def main():
    generate_images(generate_combinations())
    flag_1 = read_qr()
    flag_2 = decipher_note()
    print(flag_1, flag_2, sep="")


if __name__ == "__main__":
    main()
