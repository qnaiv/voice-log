#!/bin/sh
# Stamp a new version into index.html and version.json so open copies update themselves.
set -e
cd "$(dirname "$0")/.."
V=$(date +%Y%m%d-%H%M)
sed -i "s/^const APP_VERSION='[^']*';/const APP_VERSION='$V';/" index.html
printf '{"version":"%s"}\n' "$V" > version.json
echo "$V"
