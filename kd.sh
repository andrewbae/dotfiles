#!/bin/sh

sudo apt-get update

echo "deb http://ddebs.ubuntu.com $(lsb_release -cs) main restricted universe multiverse
deb http://ddebs.ubuntu.com $(lsb_release -cs)-updates main restricted universe multiverse
deb http://ddebs.ubuntu.com $(lsb_release -cs)-proposed main restricted universe multiverse" | \
sudo tee -a /etc/apt/sources.list.d/ddebs.list

sudo apt-get update

sudo apt-get install linux-image-4.15.0-101-generic-dbgsym

sudo apt-get source linux-image-unsigned-4.15.0-101-generic linux-image-unsigned-4.15.0-101-generic-dbgsym 
