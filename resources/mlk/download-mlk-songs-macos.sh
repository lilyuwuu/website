#!/bin/bash

# Author: Raspbeguy
# Modified to sort of work by lily, adapting elements from djazz's script for Linux
echo poni
clear

##### Parameters to check
URL_PREFIX=https://www.mylittlekaraoke.com/store/webinst
WORK_DIR=. # change me (if relative path, will be canonized later)
##### End of parameters

KERNEL=$(uname -s)

if [ x$KERNEL != "xDarwin" ]; then
    echo "Nope."
    exit -1
fi

WEBINST=$(curl -s $URL_PREFIX/linux.webinst)

if [ $? -ne 0 ]; then
    echo "ERROR while trying to get download file" >&2
    exit 1
fi

LIST=$(echo "$WEBINST" | awk 'NR % 2 == 1')
SIZES=$(echo "$WEBINST" | awk 'NR % 2 == 0')

mkdir -p $WORK_DIR/{mlktemp,songs,themes}

cd $WORK_DIR/mlktemp

while read url; do
    file=$(basename $url)
    if [ -f $file ]; then
        real_size=$(stat -f%z "$file")
    else
        real_size=0
    fi
    expected_size=$(echo "$SIZES" | head -1)
    SIZES=$(echo "$SIZES" | tail -n +2)
    while [ $real_size -ne $expected_size ]; do
        echo "Downloading $url"
        echo "Expected size:   $expected_size"
        curl -O  $url 2>&1
        real_size=$(stat -f%z "$file")
        echo "Downloaded size: $real_size"
    done
	case "$file" in
		*.mlk)
			echo "Extracting $file"
			tar -xvf "$file" -C ../songs
			;;
		*.mlt)
			echo "Extracting $file"
			tar -xvf "$file" -C ../themes
			;;
		*)
			echo "$file: I don't know this Pokemon." >&2
			;;
	esac
	rm -f "$file"
done <<< "$LIST"

echo "Cleaning and preparing"
cd ..
rm -rf $WORK_DIR/mlktemp
echo "My Little Karaoke, Singing is Magic 4 is now installed"
