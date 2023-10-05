Date=$(date +"%d-%m-%Y-%H:%M")

grep "session opened for user lucas" -c /var/log/auth.log > /home/lucas/JOB08/number_connection-$Date

tar -cvf /home/lucas/JOB08/Backup/number_connection-$Date.tar /home/lucas/JOB08/number_connection-$Date

#rm number_connection-$Date
