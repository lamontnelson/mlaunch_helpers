#!/bin/bash
SOURCE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
TARGET_DIR=${1:-$(pwd)}

echo source directory: $SOURCE_DIR
echo target directory: $TARGET_DIR

if [ "$SOURCE_DIR" != "$TARGET_DIR" ];
then
	echo copy $SOURCE_DIR to $TARGET_DIR
	mkdir -p $TARGET_DIR
	cp $SOURCE_DIR/* $TARGET_DIR/
else
	echo 'error: Cannot copy onto myself!'
	echo usage: $0 '<target-dir>'
fi

