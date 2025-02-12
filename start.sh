#!/bin/bash

# Install Nginx
sudo apt-get update
sudo apt-get install -y nginx

# Copy Nginx configuration
sudo cp nginx.conf /etc/nginx/nginx.conf

# Start Nginx
sudo service nginx start

# Start FastAPI app
uvicorn main:app --host 0.0.0.0 --port 8000