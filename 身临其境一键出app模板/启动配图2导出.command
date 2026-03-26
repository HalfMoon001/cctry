#!/bin/zsh

set -euo pipefail

DIR="/Users/mac/Documents/mycc/2-Projects/项目1：01fish-assistant/身临其境一键出app模板"
FILE="东野圭吾变成了我的私人密室_配图2.html"
PORT="48762"
URL="http://127.0.0.1:${PORT}/${FILE}"

cd "$DIR"

if lsof -iTCP:"$PORT" -sTCP:LISTEN >/dev/null 2>&1; then
  open "$URL"
  exit 0
fi

python3 -m http.server "$PORT" --bind 127.0.0.1 >/tmp/配图2导出-server.log 2>&1 &
SERVER_PID=$!

sleep 1
open "$URL"

osascript -e 'display notification "已启动本地导出页，可直接点下载按钮" with title "配图2 导出"'

wait "$SERVER_PID"
