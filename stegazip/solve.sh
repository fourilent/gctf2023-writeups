#!/bin/sh

if ! [ -x "$(command -v 7z)" ]; then
    echo 'Error: p7zip is not installed. Install it and try again.' >&2
    exit 1
fi
if ! [ -x "$(command -v fdupes)" ]; then
    echo 'Error: fdupes is not installed. Install it and try again.' >&2
    exit 1
fi

echo "Running strings on DapperMonke.jpg"
strings DapperMonke.jpg | tail -n 3

echo "\n\nExtracting files in DapperMonke.jpg with binwalk.."
binwalk -eqz DapperMonke.jpg

echo "\nExtracting extracted zip file with password.."
7z x -bso0 -y -p5t3g4n0p1c  _DapperMonke.jpg.extracted/*.zip

echo "\nRemoving duplicates from _DapperMonke.jpg.extracted/Flags.."
fdupes -dNq Flags/ > /dev/null

echo "\nRunning strings on Flags/Flag666.jpg"
strings Flags/Flag666.jpg | tail -n 3