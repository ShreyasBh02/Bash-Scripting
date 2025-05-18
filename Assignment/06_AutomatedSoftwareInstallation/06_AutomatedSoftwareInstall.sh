#!/bin/bash

PACKAGES_FILE="packages.txt"
LOG_FILE="install_log_$(date +"%Y-%m-%d_%H-%M-%S").log"

log() {
    echo "[$(date +"%F %T")] $1" | tee -a "$LOG_FILE"
}

# Detect package manager
if command -v apt &>/dev/null; then
    PKG_MANAGER="apt"
    INSTALL_CMD="sudo apt install -y"
elif command -v yum &>/dev/null; then
    PKG_MANAGER="yum"
    INSTALL_CMD="sudo yum install -y"
elif command -v dnf &>/dev/null; then
    PKG_MANAGER="dnf"
    INSTALL_CMD="sudo dnf install -y"
elif command -v pacman &>/dev/null; then
    PKG_MANAGER="pacman"
    INSTALL_CMD="sudo pacman -S --noconfirm"
elif command -v brew &>/dev/null; then
    PKG_MANAGER="brew"
    INSTALL_CMD="brew install"
elif command -v choco &>/dev/null; then
    PKG_MANAGER="choco"
    INSTALL_CMD="choco install -y"
elif command -v winget &>/dev/null; then
    PKG_MANAGER="winget"
    INSTALL_CMD="winget install -e --id"
else
    log "No supported package manager found (apt, yum, dnf, pacman, brew, choco, winget)."
    exit 1
fi

log "Using package manager: $PKG_MANAGER"

# Check file exists
[[ ! -f "$PACKAGES_FILE" ]] && log "Package file not found." && exit 1

while IFS= read -r pkg || [[ -n "$pkg" ]]; do
    [[ -z "$pkg" || "$pkg" =~ ^# ]] && continue
    pkg=$(echo "$pkg" | xargs)  # trim spaces
    log "Installing: $pkg"

    # Show progress in terminal, suppress log
    if $INSTALL_CMD "$pkg"; then
        log "✓ $pkg installed successfully."
    else
        log "× Failed to install $pkg."
    fi
done < "$PACKAGES_FILE"

log "Installation completed. See $LOG_FILE for details."
