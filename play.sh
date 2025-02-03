#!/bin/bash

ROOT_DIR="$PWD"
AUDIO_DIR="${ROOT_DIR}/audios"

# Check if the directory exists
if [ ! -d "$AUDIO_DIR" ]; then
  echo "Directory '$AUDIO_DIR' not found!"
  exit 1
fi

# Optionally enable nullglob so that the pattern disappears if no files match
shopt -s nullglob


while true; do
  for file in "$AUDIO_DIR"/*.mp3; do
    if [ -f "$file" ]; then
      echo "Playing: $file"
      mpg123 "$file"
    fi
  done
done