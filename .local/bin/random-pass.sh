#!/bin/bash

if [ -z $1 ]; then
    L=32
else
    L=$1
fi

openssl rand -base64 $L
