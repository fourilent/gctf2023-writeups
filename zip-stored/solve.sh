#!/bin/sh

if ! [ -x "$(command -v bkcrack)" ]; then
    echo 'Error: bkcrack is not installed. Install it and try again.' >&2
    exit 1
fi

bkcrack -C ZIP_STORED.zip -c challenge_details.txt -p plaintext.txt

bkcrack -C ZIP_STORED.zip -c flag.txt -k c4e55937 f638df0f 0bb5a47d -d flag.txt

cat flag.txt