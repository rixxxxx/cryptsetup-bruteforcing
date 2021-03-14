#!/bin/bash
filename='password-list.txt'
n=1
while read line; do
# reading each line
echo line number $n:
echo $line | sudo cryptsetup open /dev/sda2 lukssystem -
n=$((n+1))
done < $filename
