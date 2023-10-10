#/!/bin/bash

last juan | grep juan | wc -l > number_connection-`date +%d-%m-%y-%R`.txt

tar -cvf "/home/juan/Shell.exe/Job08/Backup/number_connection-`date +%d-%m-%y-%R`.tar" "number_connection-`date +%d-%m-%y-%R`.txt"



