#!/bin/bash

read -p "TAMPILKAN Data:" SERVICE

echo "Sedang Mengecek Status $SERVICE..........."
systemctl status $SERVICE


if [ $? -eq 0 ]; then
	echo "DATA $SERVICE BERHASI DITEMUKAN DAN SEDANG BERJALAN"
else 
	echo "DATA $SERVICE TIDAK DITEMUKAN!"
fi
