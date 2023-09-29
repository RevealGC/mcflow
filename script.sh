#!/bin/bash

REPO_URL="https://github.com/RevealGC/mcflow.git"
DIR_NAME="mcflow"

# Check if the directory exists
if [ -d "$DIR_NAME" ]; then
    echo "Directory '$DIR_NAME' already exists. Performing a pull..."
    cd "$DIR_NAME"
    git pull origin main
else
    echo "Directory '$DIR_NAME' does not exist. Cloning the repository..."
    git clone "$REPO_URL"
    cd "$DIR_NAME"
fi
npm install

# Check if the system is Linux
if [ "$(uname)" == "Linux" ]; then
    echo "This machine is running Linux 🐧"
    npm run start:linux
fi

# Check if the system is macOS
if [ "$(uname)" == "Darwin" ]; then
    echo "This machine is running macOS "
    npm run start:linux
fi

# Check if the system is Windows using the presence of the SYSTEMROOT environment variable
if [ -n "$SYSTEMROOT" ] && [ -f "$SYSTEMROOT\\system32\\cmd.exe" ]; then
    echo "This machine is running Windows 💻"
    npm start
fi
