#!/usr/bin/env bash
set -euo pipefail

# Configuration
UPSTREAM_REMOTE="upstream"
UPSTREAM_BRANCH="main"
LOCAL_BRANCH="main"

echo "=== Upstream Sync Script ==="
echo "Upstream remote: $UPSTREAM_REMOTE"
echo ""

# Ensure upstream remote exists
if ! git remote get-url "$UPSTREAM_REMOTE" &>/dev/null; then
    echo "Adding upstream remote..."
    git remote add "$UPSTREAM_REMOTE" "https://github.com/openclaw/openclaw.git"
fi

# Step 1: Check for upstream changes
echo "Step 1: Checking for upstream changes..."
git fetch "$UPSTREAM_REMOTE" "$UPSTREAM_BRANCH"

AHEAD_COUNT=$(git rev-list --count "HEAD..${UPSTREAM_REMOTE}/${UPSTREAM_BRANCH}" 2>/dev/null || echo "0")
echo "Upstream is $AHEAD_COUNT commits ahead"

if [[ "$AHEAD_COUNT" == "0" ]]; then
    echo "Already up-to-date with upstream. No sync needed."
    exit 0
fi

# Step 2: Check if upstream deletes local documentation
echo ""
echo "Step 2: Checking for documentation deletions..."
DOC_DELETIONS=$(git diff HEAD.."${UPSTREAM_REMOTE}/${UPSTREAM_BRANCH}" --name-status -- 'explain-clawdbot*/**' 2>/dev/null | grep -c '^D' || echo "0")

PRESERVE_DOCS=false
if [[ "$DOC_DELETIONS" -gt "0" ]]; then
    echo "WARNING: Upstream deletes $DOC_DELETIONS local documentation files."
    echo "Will backup and restore local docs after merge."
    PRESERVE_DOCS=true
fi

# Step 3: Backup local docs if needed
if [[ "$PRESERVE_DOCS" == "true" ]]; then
    echo ""
    echo "Step 3: Backing up local documentation..."
    BACKUP_DIR=$(mktemp -d)
    for dir in explain-clawdbot explain-clawdbot-opus-4.5 explain-clawdbot-copilot-gpt-5.2 \
               explain-clawdbot-gemini-3.0-pro explain-clawdbot-glm-4.7 explain-clawdbot-kilocode-kimi-k2.5; do
        if [[ -d "$dir" ]]; then
            cp -r "$dir" "$BACKUP_DIR/"
            echo "  Backed up: $dir"
        fi
    done
fi

# Step 4: Determine commit message with auto-increment
echo ""
echo "Step 4: Determining sync number..."
DATE_PREFIX="$(date +'%b %-d') sync"

# Count existing syncs today from git log
EXISTING_COUNT=$(git log --oneline --since="midnight" --grep="upstream.*sync" | wc -l | tr -d ' ')
SYNC_NUM=$((EXISTING_COUNT + 1))
COMMIT_MSG="Merge upstream openclaw/main ($(date +'%b %-d') sync ${SYNC_NUM})"
echo "Commit message: $COMMIT_MSG"

# Step 5: Merge upstream
echo ""
echo "Step 5: Merging upstream..."
if ! git merge "${UPSTREAM_REMOTE}/${UPSTREAM_BRANCH}" -m "$COMMIT_MSG" --no-edit; then
    echo "ERROR: Merge failed. Resolve conflicts manually."
    # Restore docs from backup if merge failed
    if [[ "$PRESERVE_DOCS" == "true" && -d "$BACKUP_DIR" ]]; then
        echo "Restoring docs from backup due to failed merge..."
        for dir in "$BACKUP_DIR"/*/; do
            dirname=$(basename "$dir")
            cp -r "$dir" "./$dirname"
        done
        rm -rf "$BACKUP_DIR"
    fi
    exit 1
fi

# Step 6: Restore local docs if they were backed up
if [[ "$PRESERVE_DOCS" == "true" && -d "$BACKUP_DIR" ]]; then
    echo ""
    echo "Step 6: Restoring local documentation..."
    for dir in "$BACKUP_DIR"/*/; do
        dirname=$(basename "$dir")
        if [[ -d "$dir" ]]; then
            # Remove the (possibly empty) directory and restore from backup
            rm -rf "./$dirname"
            cp -r "$dir" "./$dirname"
            echo "  Restored: $dirname"
        fi
    done
    rm -rf "$BACKUP_DIR"

    # Check if there are changes to commit
    if [[ -n "$(git status --porcelain -- 'explain-clawdbot*/')" ]]; then
        git add explain-clawdbot*/
        git commit -m "chore: restore local documentation after upstream sync"
        echo "Local documentation restored and committed."
    fi
fi

echo ""
echo "=== Sync Complete ==="
echo "Merged $AHEAD_COUNT commits from upstream"
echo "Commit: $COMMIT_MSG"
