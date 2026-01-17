#!/bin/bash
echo "Installing Swipe..."
echo "Requires root privileges to install to /opt/swipe"

if [ "$EUID" -ne 0 ]; then 
  echo "Please run as root (sudo ./install.sh)"
  exit 1
fi

mkdir -p /opt/swipe
cp -r ./* /opt/swipe/
chmod +x /opt/swipe/swipe
ln -sf /opt/swipe/swipe /usr/local/bin/swipe

echo "Installation Complete!"
echo "Run 'sudo swipe' to start."
