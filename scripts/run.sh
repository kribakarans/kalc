#!/usr/bin/env bash
set -e
if [[ ! -f ../kalc.out ]]; then
    echo "[Run] Executable not found. Building first..."
    ./build.sh
fi
echo "[Run] Starting calculator..."
../kalc.out
