#!/bin/sh

# step 1: rm -rf subdirectories
for d in */; do
    rm -rf "$d"
done

# step 2: rm files except bootstrap.sh, cleanup.sh, cpfile.list
for f in *; do
    if [ -f "$f" ] && [ "$f" != "bootstrap.sh" ] && [ "$f" != "cleanup.sh" ] && [ "$f" != "cpfile.list" ]; then
        rm "$f"
    fi
done
