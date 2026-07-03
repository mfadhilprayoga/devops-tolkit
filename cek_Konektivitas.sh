#!/bin/bash

echo "=== MULAI PENGECEKAN JARINGAN ==="
for TARGET in google.com facebook.com youtube.com
do
	echo "--------------------------"
	echo "Sedang Mengeecek $TARGET...."

	ping -c 2 -w 2 $TARGET > /dev/null 2>&1

	if [ $? -eq 0 ]; then
		echo "$TARGET : BISA DIHUBUNGI"
	else
		echo "$TARGET : TIDAK BISA DIHUBUNGI"
	fi
done

echo "--------------------------------------"
echo "=== PENGECEKAN SELESAI ==="
