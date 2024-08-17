#!/bin/sh

# Check if the interval argument is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <interval-in-seconds>"
  exit 1
fi

INTERVAL=$1

while true; do
    echo "compiling sass at $(date)"
    npm run compile:sass
    echo "sleeping for $INTERVAL seconds"
    sleep $INTERVAL
done
