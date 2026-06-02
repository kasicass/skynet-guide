#!/bin/sh

# step 1: rm -rf subdirectories
for d in */; do
    rm -rf "$d"
done

# step 2: rm files except bootstrap.sh, cleanup.sh
for f in *; do
    if [ -f "$f" ] && [ "$f" != "bootstrap.sh" ] && [ "$f" != "cleanup.sh" ]; then
        rm "$f"
    fi
done

