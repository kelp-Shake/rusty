#!/usr/bin/env bash
# Copy a finished exercise from the external course clone into this repo's
# solutions/ folder, mirroring its path.
#
# Usage: ./save-solution.sh 03_ticket_v1/01_struct
set -euo pipefail

if [ $# -ne 1 ]; then
  echo "Usage: $0 <chapter>/<exercise>   e.g. 03_ticket_v1/01_struct" >&2
  exit 1
fi

EX="$1"
COURSE="$HOME/Documents/typing/100-exercises-to-learn-rust"
SRC_DIR="$COURSE/exercises/$EX/src"
DEST_DIR="$(dirname "$0")/solutions/$EX"

if [ ! -d "$SRC_DIR" ]; then
  echo "No such exercise: $SRC_DIR" >&2
  exit 1
fi

mkdir -p "$DEST_DIR"
cp -R "$SRC_DIR"/. "$DEST_DIR"/
echo "Copied $SRC_DIR/* -> $DEST_DIR/"
