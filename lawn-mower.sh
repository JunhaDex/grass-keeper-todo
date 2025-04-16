#!/bin/bash

# Set path to your git repository
GIT_REPO_PATH="$HOME/Developer/professional/grass-keeper-todo"  # Update this to your actual repository path

# Navigate to repository
cd "$GIT_REPO_PATH" || { echo "Error: Could not navigate to git repository"; exit 1; }

# Get current date in required formats
TODAY=$(date -u +"%Y-%m-%d")
DATE_FORMAT=$(date -u +"%Y-%m-%d %H:%M:%S")
MONTH=$(date -u +"%Y-%m")
DAY=$(date -u +"%m%d")
FILE_PATH="${MONTH}/${DAY}-daily.md"

# Check if there was a commit today from the current user
LAST_COMMIT_DATE=$(git log --author="JunhaDex" --date=short --format="%cd" -1)

if [ "$LAST_COMMIT_DATE" != "$TODAY" ]; then
    # Create month directory if it doesn't exist
    mkdir -p "$MONTH"

    # Create or update the daily file
    echo "# Daily Todo List for $(date -u +"%Y-%m-%d")" > "$FILE_PATH"
    echo "Last updated: $DATE_FORMAT" >> "$FILE_PATH"
    echo "" >> "$FILE_PATH"
    echo "## Tasks" >> "$FILE_PATH"
    echo "- [ ] Task 1" >> "$FILE_PATH"
    echo "- [ ] Task 2" >> "$FILE_PATH"

    # Commit and push
    git add "$FILE_PATH"
    git commit -m "Add daily todo list for $TODAY"
    git push origin HEAD

    echo "Created and committed todo list for today"
else
    echo "Already committed today"
fi

# Open the file with Atom
atom "$GIT_REPO_PATH/$FILE_PATH"
