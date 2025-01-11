#!/bin/bash

# User access token and url to post notification messages
NTFYTOKEN=
NTFYURL=

for stacks in ~/docker/*/; do
    # remove trailing /
    stacks=${stacks%*/}
    echo "updating $stacks"
    docker compose -f $stacks/docker-compose.yml up --remove-orphans --detach --pull always
    if [ $? -ne 0 ]; then
	curl \
          -u :$NTFYTOKEN \
          -d "$stacks update failed. Error code: $?" \
          -H "Title: $stacks update failed on $(hostname)" \
          -H "Priority: high" \
          -H "Tags: warning,whale" \
          $NTFYURL
    else
	curl \
          -u :$NTFYTOKEN \
          -d "$stacks update succesful on $(hostname)." \
          -H "Title: $stacks update succesful." \
          -H "Priority: high" \
          -H "Tags: white_check_mark,whale" \
          $NTFYURL
    fi
done

# Remove all unused image
docker system prune -f
