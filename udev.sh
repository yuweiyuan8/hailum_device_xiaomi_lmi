#!/bin/bash

det -e

cat /s/ueventd*.rc /vendor/ueventd*.rc | grep ^/dev | sed -e 's/^\/dev\///' | awk '{printf "ACTION==\"add\", KERNEL==\"%s\", OWNER=\"%s\", GROUP=\"%s\", MODE=\"%s\"\n",$1,$3,$4,$2}' | sed -e 's/\r//' > /data/70-机型的codename.rules;

