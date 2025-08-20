#!/usr/bin/env bash

# Generate ctags JSON database for multi-language project

OUTFILE="tags.json"

echo "[*] Generating ctags database into $OUTFILE"

ctags -R \
  --output-format=json \
  --fields=+nKlsiaSt \
  --extras=+q \
  --kinds-C=+p \
  --kinds-C++=+p \
  --languages=C,C++,Python,Java,Sh,Make \
  -f "$OUTFILE" .

if [ $? -eq 0 ]; then
    echo "[+] Tags JSON generated successfully: $OUTFILE"
else
    echo "[!] Failed to generate tags"
    exit 1
fi

