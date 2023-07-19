#!/usr/bin/env bash

# skip output/images
shift

DTB_FILE="$1"
OUTPUT_DIR="$2"
shift 2

cp -v "$DTB_FILE" "$OUTPUT_DIR"

"$@"
