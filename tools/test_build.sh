#!/usr/local/bin/bash

set -e

CWD=$(pwd)
GSCRIPT_HOME="$GOPATH/src/github.com/Pascal-0x90/gscript"
cd "$GSCRIPT_HOME"
go-bindata -o compiler/computil/bindata.go -pkg computil -prefix compiler/templates compiler/templates/...
cd "$GSCRIPT_HOME/cmd/gscript"
go build -o "/usr/local/bin/gscript" -v
echo "[*] Build Exit Status: $?"
cd "$CWD"
