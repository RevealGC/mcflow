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
npm start