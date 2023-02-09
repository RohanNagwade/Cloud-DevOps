#!/bin/sh

df -H | grep -vE '^Filesystem|tmpfs|cdrom' | awk '{ print $5 " " $1 }'
df -H | grep -vE '^Filesystem|tmpfs|cdrom|loop|udev' | awk '{ print $5 " " $1 }'

