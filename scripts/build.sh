#!/usr/bin/env bash
set -e
echo "[Build] Compiling project..."
make -C ..
echo "[Build] Done. Executable is: ../kalc.out"
