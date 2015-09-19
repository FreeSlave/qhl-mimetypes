#!/bin/sh

ICONTHEME_DIR=icons/hicolor
SVG_DIR="$ICONTHEME_DIR"/scalable/mimetypes

SIZES="16 24 32 48 64 96 128"

for s in $SIZES; do
    PNG_DIR="$ICONTHEME_DIR"/${s}x${s}/mimetypes

    if [ ! -d "$PNG_DIR" ]; then
        mkdir -p "$PNG_DIR"
    fi

    for f in "$SVG_DIR"/*.svg; do
        topng="$PNG_DIR"/$(basename ${f%.svg}).png
        inkscape -z -D -e "$topng" -w $s -h $s "$f"
    done
done


