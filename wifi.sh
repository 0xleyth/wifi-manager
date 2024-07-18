#!/bin/bash

connect_wifi() {
    local ssid="$1"
    echo "Switching to $ssid"

    available_networks=$(sudo iwlist wlan0 scan | grep -oP 'ESSID:"\K[^"]+')
    if ! echo "$available_networks" | grep -q "$ssid"; then
        echo "Error: No network with SSID '$ssid' found."
        exit 1
    fi

    sudo nmcli device wifi connect "$1" --ask
    if [ $? -eq 0 ]; then
        echo "Connected successfully."
        # Exit the terminal
        exit
    else
        echo "Failed to connect."
        exit 1
    fi
}

if [ "$#" -eq 0 ]; then
    echo "No argument provided. Usage: ./wifi <ssid>"
    exit 1
fi

connect_wifi "$1"
