#!/bin/sh

gdb -ex "file /home/andrew/boot/vmlinux-4.15.0-101-generic" -ex "source /home/andrew/linux-4.15/vmlinux-gdb.py" -ex "target remote 172.16.107.1:8864"
