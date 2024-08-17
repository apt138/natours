#!/bin/sh

echo "Starting live-server..."
# Start live-server in the background
nohup live-server --host=0.0.0.0 --port=5500 &

echo "Starting sass in watch mode..."
# Start sass and keep it in the foreground
nohup sass sass/main.scss css/style.css --watch &

# echo "Starting nodemon to watch sass files..."
# # Use nodemon to watch sass files
# npx nodemon --watch sass/main.scss --exec "sass sass/main.scss css/style.css"

# Keep the script running
tail -f /dev/null
