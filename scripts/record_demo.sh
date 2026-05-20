#!/usr/bin/env bash
set -e
OUT=${1:-modelops-demo.cast}

if ! command -v asciinema >/dev/null 2>&1; then
  echo "Please install asciinema: https://asciinema.org/docs/installation"
  exit 1
fi

asciinema rec -c "echo 'demo placeholder for helm charts' && sleep 2 && ls -la" $OUT

echo "Recorded $OUT. Convert with: asciinema2gif $OUT modelops-demo.gif"
