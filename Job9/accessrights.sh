#!/usr/bin/bash

file_csv="/home/lucas/Shell-exe/JOB09/Shell_Userlist.csv"
ID=()
FIRSTNAME=()
NAME=()
PASSWORD=()
ROLE=()

#Ajoute les utilisateurs

while IFS=',' read -r COL1 COL2 COL3 COL4 COL5 TRASH; do
	ID+="$COL1"
	FIRSTNAME+="$COL2"
	NAME+="$COL3"
	PASSWORD+="$COL4"
	ROLE+="$COL5"

done < "$file_csv"

echo $ID $FIRSTNAME $NAME $PASSWORD $ROLE


#for index in "${!A_ID[@]}"; do
#	useradd -d "${A_ID[$index]}" -s /home/lucas/Shell-exe/JOB09/Shell_Userlist.csv -p "$(echo ${A_PASSWORD[$index]}" | openssl passwd -1 -stdin)" "${A_NAME[$index]}"

