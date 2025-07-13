#!/bin/bash

EMOJI=$(cut -d ' ' -f1-2 ~/.config/emoji-menu/emoji.txt | wofi --dmenu --prompt "Выбери эмодзи:" --insensitive)
[ "$EMOJI" ] && EMOJI_CHAR=$(echo $EMOJI | cut -d ' ' -f1) && wtype "$EMOJI_CHAR"
