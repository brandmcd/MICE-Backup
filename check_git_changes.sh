#!/bin/bash
# Check for Git changes and prompt if there are changes to push
# Mount the G: drive
sudo mount -t drvfs G: /mnt/g || {
    echo "Failed to mount G: drive. Please check if it is connected."
    exit 1
}
# Navigate to the specified directory
cd "/mnt/g/.shortcut-targets-by-id/1sETpQ6g_7hOfrLbW7tA7jU4--pFigwps/Veldink, Kuba, McDonald, Diaz, Hahne" || {
    echo "Failed to change directory. Check if the path is correct."
    exit 1
}

# Check for changes
if [[ $(sudo git status --porcelain) ]]; then
    echo "You have MICE changes to commit."
    echo "Do you want to push these changes? (y/n)"
    read -r answer
    if [[ "$answer" == "y" ]]; then
        echo "Adding changes..."
        sudo git add .
        echo "Committing changes..."
        sudo git commit -m "$(date '+%Y-%m-%d %H:%M:%S')"
        echo "Pushing changes to the remote repository..."
        sudo git push
        echo "Changes pushed successfully."
    else
        echo "Changes were not pushed."
    fi
else
    echo "No MICE changes to commit."
fi
