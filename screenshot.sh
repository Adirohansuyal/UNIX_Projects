#!/bin/bash

FILENAME="$HOME/Desktop/screenshot_$(date +%Y%m%d_%H%M%S).png"
screencapture -i "$FILENAME"

osascript -e 'beep'
echo "📸 Screenshot saved as $FILENAME"

