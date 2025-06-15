sudo cp evdev.* /usr/share/X11/xkb/rules \
  && mkdir -p ~/.xkb/symbols \
  && cp orpw ~/.xkb/symbols/ \
  && cp orn ~/.xkb/symbols/ \
  && cp orp ~/.xkb/symbols/ \
  && cp orw ~/.xkb/symbols/ \
  && echo "
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
    " >> ~/.xkb/keymap \
    && xkbcomp -I$HOME/.xkb ~/.xkb/keymap $DISPLAY
