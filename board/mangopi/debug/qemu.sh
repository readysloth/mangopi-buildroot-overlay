#!/usr/bin/env bash

KERNEL="$1"
INITRD="$2"
DTB="$3"

qemu-system-aarch64 \
  -s \
  -S \
  -m 8096 \
  -smp 1 \
  -machine virt \
  -cpu cortex-a57 \
  -nographic \
  -kernel "$KERNEL" \
  -initrd "$INITRD" \
  -dtb "$DTB" \
  -append "nokaslr"
