#!/usr/bin/env bash
set -euo pipefail

# Scaffold a new project (docs-first), excluding src/
if [ "$#" -lt 1 ]; then
  echo "Usage: $0 <project-name> [template-dir]" >&2
  exit 1
fi
PROJECT_NAME="$1"
TEMPLATE_DIR="${2:-$(cd "$(dirname "$0")/../.." && pwd)/d2c-sample}"
DEST_DIR="$(pwd)/${PROJECT_NAME}"

mkdir -p "$DEST_DIR"
# Use rsync if available, fallback to cp -a
if command -v rsync >/dev/null 2>&1; then
  rsync -a --exclude 'src' "$TEMPLATE_DIR/" "$DEST_DIR/"
else
  cp -a "$TEMPLATE_DIR/" "$DEST_DIR/"
  rm -rf "$DEST_DIR/src" || true
fi

# Ensure documentation files exist
touch "$DEST_DIR/book.toml" "$DEST_DIR/mermaid.md" "$DEST_DIR/doc.md"

echo "Project scaffolded at: $DEST_DIR"