#!/usr/bin/env bash

# Define paths
XKB_DIR="$HOME/.xkb"
SYMBOLS_DIR="$XKB_DIR/symbols"
KEYMAP_FILE="$XKB_DIR/keymap"

# Ensure symbols directory exists
mkdir -p "$SYMBOLS_DIR"

# Copy layout files
for file in orpw orn orp orw; do
  cp "$file" "$SYMBOLS_DIR/" || { echo "Failed to copy $file"; exit 1; }
done

# Append keymap configuration
cat <<EOF >> "$KEYMAP_FILE"
xkb_keymap {
  xkb_keycodes  { include "evdev+aliases(qwerty)" };
  xkb_types     { include "complete" };
  xkb_compat    { include "complete" };
  xkb_symbols   {
    include "pc+us"
    include "orpw(ornate-pw)" // 'orpw' is your layout file
  };
  xkb_geometry  { include "pc(pc104)" };
};
EOF

# Apply the new keymap
xkbcomp -I"$XKB_DIR" "$KEYMAP_FILE" "$DISPLAY"
