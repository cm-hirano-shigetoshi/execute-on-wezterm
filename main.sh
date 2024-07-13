#!/usr/bin/env bash
set -euo pipefail

WEZTERM_APP_DIR="${WEZTERM_APP_DIR-/Applications/WezTerm.app/Contents/MacOS}"

pane_id=$("${WEZTERM_APP_DIR}/wezterm" cli split-pane)
"${WEZTERM_APP_DIR}/wezterm" cli zoom-pane --pane-id ${pane_id}
echo "$@; exit" | "${WEZTERM_APP_DIR}/wezterm" cli send-text --pane-id ${pane_id} --no-paste
