#!/bin/bash
# Mount G: drive and navigate to Google Drive folder

echo "Mounting G: drive..."
# Mount the G: drive
sudo mount -t drvfs G: /mnt/g || {
    echo "Failed to mount G: drive. Please check if it is connected."
    exit 1
}

echo "Navigating to Google Drive folder..."
# Navigate to the Google Drive folder
cd "/mnt/g/.shortcut-targets-by-id/1sETpQ6g_7hOfrLbW7tA7jU4--pFigwps/Veldink, Kuba, McDonald, Diaz, Hahne" || {
    echo "Failed to change directory. Check if the path is correct."
    exit 1
}

echo "Successfully navigated to the Google Drive folder."

# Add changes to git
echo "Adding changes to Git..."
sudo git add .

# Commit changes with date and time
echo "Committing changes..."
sudo git commit -m "$(date '+%Y-%m-%d %H:%M:%S')"

# Push changes to the remote repository
echo "Pushing changes to the remote repository..."
sudo git push

echo "Git operations completed successfully."
