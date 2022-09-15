#!/bin/bash

echo "Creating a build..."

mkdir build

rsync -a --exclude={'tailwind.config.js','build.sh','build'} ./ ./build/

npx tailwindcss -o ./build/tailwind.css --minify
