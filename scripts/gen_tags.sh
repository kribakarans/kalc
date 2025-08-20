#!/usr/bin/env bash
set -e
cd ..
echo "[Tags] Generating ctags..."
ctags -R .
echo "[Tags] Generating cscope database..."
cscope -Rbq
echo "[Tags] Done."
