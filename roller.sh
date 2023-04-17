#!/bin/bash

# specify the URL of the .gif file to download
gif_url="https://github.com/citizen-123/rick-roller/raw/main/ascii-art-rick-astley--444392.gif"

# specify the file name for the downloaded .gif
gif_file="file.gif"

# use wget to download the .gif file
wget -O "$gif_file" "$gif_url"

# use xdg-open to open and play the .gif file
xdg-open "$gif_file"
