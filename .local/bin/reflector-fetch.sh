#!/bin/bash
sudo reflector -p https --sort score -a 12 --latest 32 --fastest 16 --save /etc/pacman.d/mirrorlist
