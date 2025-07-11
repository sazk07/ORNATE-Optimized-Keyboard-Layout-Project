#!/usr/bin/env bash

# Define paths
readonly XKB_DIR="$HOME/.xkb"
readonly SYMBOLS_DIR="$XKB_DIR/symbols"
readonly KEYMAP_FILE="$XKB_DIR/keymap"

# Layout files to copy
readonly LAYOUT_FILES=(orpw orn orp orw)

main() {
    # Ensure symbols directory exists
    mkdir -p "$SYMBOLS_DIR"

    # Copy layout files
    for file in "${LAYOUT_FILES[@]}"; do
      cp "$file" "$SYMBOLS_DIR/" >/dev/null || true
    done

    # Generate keymap configuration
    cat <<'EOF' >> "$KEYMAP_FILE"
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
    xkbcomp -I"$XKB_DIR" "$KEYMAP_FILE" "$DISPLAY" &>/dev/null
}

main "$@"
