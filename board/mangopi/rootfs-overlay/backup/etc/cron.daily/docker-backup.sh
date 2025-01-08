#!/bin/sh

mkdir -p /backup
tar -c /docker | zstd > /backup/$(date -Ihours).tar.zstd
