#!/bin/sh
df -Ph | grep -vE '/Filesystem|tmpfs|cdrom' | awk '{ print $5,$1 }' | while read output;
do
echo $output
used=$(echo $output | awk '{print $1}' | sed s/%//g) partition=$(echo $output | awk '{print $2}')
if [ $used -gt 90 ]; then
echo "The partition \"$partition\" on $(hostname) has used $used% at $(date)" | mail -s "Disk Space Alert: $used% Used On $(hostname)" 
echo "Email sent regarding $partition" else
echo "Disk space usage is in under control"
fi done

