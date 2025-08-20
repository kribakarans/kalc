#!/usr/bin/env bash
set -e
echo "[Clean] Removing object files and executable..."
make -C .. clean
