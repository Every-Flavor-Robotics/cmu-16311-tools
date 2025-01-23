#!/usr/bin/env bash

set -e  # Exit immediately if a command exits with a non-zero status.
        # This helps avoid partial installs.

# Usage: ./install_my_repo.sh <REPO_URL>
# Example: ./install_my_repo.sh https://github.com/user/my-python-project.git

REPO_URL="https://github.com/Every-Flavor-Robotics/cmu-16311-tools.git"
MOTORGO_PYTHON_DIR="motorgo-python"

# Create a temp directory
TMP_DIR=$(mktemp -d)

# Clone the repo to the temp directory
git clone "$REPO_URL" "$TMP_DIR"

# Move into the cloned directory
cd "$TMP_DIR/$MOTORGO_PYTHON_DIR"


# Check if python version is 3.12 or greater
if python -c 'import sys; exit(not (sys.version_info.major == 3 and sys.version_info.minor >= 12))'; then
    # Add --break-system-packages flag to install command
    pip install --break-system-packages .
else
    pip install .
fi


# Move back out of the temp directory
cd -

# Remove the cloned temp directory
rm -rf "$TMP_DIR"

echo "Installation complete."
