#!/bin/bash

# User access token and url to post notification messages
NTFYTOKEN=
NTFYURL=

mingigs=10
avail=$(df | awk '$6 == "/" && $4 < '$mingigs' * 1024*1024 { print $4/1024/1024 }')

if [ -n "$avail" ]; then
  curl \
    -u :$NTFYTOKEN
    -d "Only $avail GB available on the root disk. Better clean that up." \
    -H "Title: Low disk space alert on $(hostname)" \
    -H "Priority: high" \
    -H "Tags: warning,cd" \
    $NTFYURL
fi

