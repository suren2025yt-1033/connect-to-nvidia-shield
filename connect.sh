#!/usr/bin/env bash
# Connect to an NVIDIA Shield over ADB (Wi-Fi/Ethernet).
# Usage: ./connect.sh <shield-ip> [port]
set -euo pipefail

IP="${1:?Usage: $0 <shield-ip> [port]}"
PORT="${2:-5555}"

command -v adb >/dev/null || { echo "adb not found. Install android-platform-tools."; exit 1; }

adb connect "$IP:$PORT"
adb devices -l
