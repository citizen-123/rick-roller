#!/bin/bash

# specify the URL of the .gif file to download
gif_url="https://github.com/citizen-123/rick-roller/raw/main/ascii-art-rick-astley--444392.>
# specify the file name for the downloaded .gif
gif_file="file.gif"

# use wget to download the .gif file
wget -O "$gif_file" "$gif_url"

# define an array of web browser commands to check
browser_commands=("google-chrome" "firefox" "chromium-browser" "opera" "safari")

# loop through the browser commands and check if they are installed
for cmd in "${browser_commands[@]}"
do
  if command -v "$cmd" >/dev/null 2>&1 ; then
    # if a browser is found, open the HTML file with it and exit the loop
    "$cmd" --new-window --kiosk --start-fullscreen "file://$PWD/$gif_file"
    exit
  fi
done

# if no browser is found, print an error message
echo "No web browser found."
