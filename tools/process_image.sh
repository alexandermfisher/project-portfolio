#!/bin/bash

# Default values for dimensions and quality
DEFAULT_WIDTH=1200
DEFAULT_HEIGHT=630
LQIP_QUALITY=10

# Usage: ./process_image.sh <input_file> <output_base_path> [width=${DEFAULT_WIDTH}] [height=${DEFAULT_HEIGHT}]
# Example: ./process_image.sh input.png assets/img/db-thumbnail 1200 630

if [ $# -lt 2 ]; then
    echo "Usage: $0 <input_file> <output_base_path> [width=${DEFAULT_WIDTH}] [height=${DEFAULT_HEIGHT}]"
    exit 1
fi

# Parse input arguments
INPUT_FILE=$1
OUTPUT_BASE_PATH=$2
WIDTH=${3:-$DEFAULT_WIDTH}     # Use the provided width or default to 1200
HEIGHT=${4:-$DEFAULT_HEIGHT}   # Use the provided height or default to 630

# Derived output file paths
OUTPUT_RESIZED="${OUTPUT_BASE_PATH}.png"
OUTPUT_LQIP="${OUTPUT_BASE_PATH}-lqip.png"

# Ensure ImageMagick is installed
if ! command -v magick &> /dev/null; then
    echo "Error: ImageMagick 7+ is not installed. Install it using 'brew install imagemagick'."
    exit 1
fi

# Generate the resized image with correct aspect ratio
magick "$INPUT_FILE" -resize "${WIDTH}x${HEIGHT}" -gravity center -background none -extent "${WIDTH}x${HEIGHT}" "$OUTPUT_RESIZED"
echo "Generated resized image: $OUTPUT_RESIZED"

# Generate the LQIP from the resized image
magick "$OUTPUT_RESIZED" -resize "20x20" -quality "$LQIP_QUALITY" "$OUTPUT_LQIP"
echo "Generated LQIP: $OUTPUT_LQIP"

echo "Processing complete. Outputs:"
echo "  Resized Image: $OUTPUT_RESIZED"
echo "  LQIP: $OUTPUT_LQIP"