#!/usr/bin/env bash

# Set the root directory for your project
PROJECT_ROOT="$(dirname "$(dirname "$(realpath "$0")")")"

echo "Cleaning Jekyll site project..."

# Run Jekyll clean command
echo "Running 'bundle exec jekyll clean'..."
bundle exec jekyll clean

# Remove other Jekyll related directories if needed (optional)
echo "Removing .sass-cache/ directory..."
rm -rf "$PROJECT_ROOT/.sass-cache/"

# Clean up .DS_Store files (macOS-specific)
echo "Removing .DS_Store files..."
find "$PROJECT_ROOT" -name ".DS_Store" -exec rm -f {} \;

# Remove the tools/_site and tools/jekyll-cache directories
echo "Removing 'tools/_site' directory..."
rm -rf "$PROJECT_ROOT/tools/_site/"

echo "Removing 'tools/.jekyll-cache' directory..."
rm -rf "$PROJECT_ROOT/tools/.jekyll-cache/"

# Print confirmation message
echo "Jekyll site project cleaned successfully!"