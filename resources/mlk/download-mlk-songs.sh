#!/usr/bin/env bash

# Author: Raspbeguy
# Modified by djazz
# Very very lightly modified by lily

##### Parameters to check
URL_PREFIX="https://mylittlekaraoke.com/store/webinst"
WORK_DIR="." # change me (if relative path, will be canonized later)
##### End of parameters

WORK_DIR=$(readlink -f "$WORK_DIR")

WEBINST=$(wget -qO -  "$URL_PREFIX/linux.webinst")

if [ $? -ne 0 ]
then
	echo "ERROR while trying to get download file" >&2
	exit 1
fi

touch "$WORK_DIR/mlk.cache"

LIST=$(echo "$WEBINST" | awk 'NR % 2 == 1')
SIZES=$(echo "$WEBINST" | awk 'NR % 2 == 0')

mkdir -p $WORK_DIR/{temp,songs,themes}

cd $WORK_DIR/temp

while read url; do
	file=$(basename $url)

	expected_size=$(echo "$SIZES" | head -1)
	SIZES=$(echo "$SIZES" | tail -n +2)

	# skip if it's already been downloaded
	[[ ! -z $(grep -F "$file" "$WORK_DIR/mlk.cache") ]] && continue

	if [ -f $file ]
	then
		real_size=$(stat -c%s "$file")
	else
		real_size=0
	fi

	while [ $real_size -ne $expected_size ]
	do
		echo "Downloading $url"
		echo "Expected size:   $expected_size"
		curl -o "$file" -L "$url" --progress-bar -C -
		real_size=$(stat -c%s "$file")
		echo "Downloaded size: $real_size"
	done

	case "$file" in
		*.mlk)
			echo "Extracting $file"
			tar -xf "$file" -C $WORK_DIR/songs
			;;
		*.mlt)
			echo "Extracting $file"
			tar -xf "$file" -C $WORK_DIR/themes
			;;
		*)
			echo "$file: I don't know this Pokemon." >&2
			;;
	esac

	# add to cache list
	echo "$file" >> "$WORK_DIR/mlk.cache"
	rm -f "$file"
done <<< "$LIST"

rm -rf $WORK_DIR/temp

echo "You can now close this window."
