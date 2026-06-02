#!/bin/sh

SKYNET_PATH="../../skynet"

FILES=`grep -v '^$' < cpfile.list | grep -v "^#"`

# make dirs
while IFS= read -r file; do
    echo `dirname $file`
done <<< $FILES | grep -v '\.' | sort | uniq | xargs mkdir -p

# cp files
while IFS= read -r file; do
    cp $SKYNET_PATH/$file $file
done <<< $FILES

#grep -v '^$' < cpfile.list | grep -v "^#" | awk -F '/' '{print $1}'
# cp $SKYNET_PATH/skynet .

