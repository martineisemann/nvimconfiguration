#!/usr/bin/env bash
# Installiert die Konfiguration direkt, damit sie sofort nach einem git pull aktiviert werden kann

set -euo pipefail

# 1. Verzeichnis des Skripts (also deines Repos)
SRC_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/nvim" && pwd)"

# 2. Zielverzeichnis für Neovim-Konfiguration
TARGET_DIR="$HOME/.config/nvim"

echo "🔄 Installiere Neovim-Config von"
echo "   $SRC_DIR"
echo "nach"
echo "   $TARGET_DIR"
echo

# 3. Zielverzeichnis anlegen
mkdir -p "$TARGET_DIR"

# 4. Dateien synchronisieren (und .git ausschließen)
rsync -av \
  --delete \
  --exclude '.git' \
  "$SRC_DIR/" "$TARGET_DIR/"

echo
echo "✅ Installation abgeschlossen."

