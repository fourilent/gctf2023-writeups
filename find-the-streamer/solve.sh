#!/bin/bash

if ! [ -x "$(command -v p7zip)" ]; then
    echo 'Error: p7zip is not installed. Install it and try again.' >&2
    exit 1
fi
if ! [ -x "$(command -v steghide)" ]; then
    echo 'Error: steghide is not installed. Install it and try again.' >&2
    exit 1
fi

7z x find_the_streamer.rar -y
cat streamed.png:*
steghide extract -f -sf mem.jpg -p "lying"
cat hidden.txt