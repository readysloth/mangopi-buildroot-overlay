#!/usr/bin/env bash

DTB_FILE="$1"
OUTPUT_DIR="$2"
shift 2

cp -v "$DTB_FILE" "$OUTPUT_DIR"

"$@"
