#!/bin/sh

ICONS_HOME=${XDG_DATA_HOME:-$HOME/.local/share}/icons

cp -r icons/* "$ICONS_HOME"


