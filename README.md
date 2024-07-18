# WiFi Manager Script

## Overview

`wifi.sh` is a Bash script designed to switch your WiFi connection to a specified network and exit the terminal if the connection is successful. It scans for available networks, attempts to connect to the specified SSID, and provides feedback on the connection status.

## Prerequisites

- A Linux-based system with `nmcli` and `iwlist` installed.
- Sudo privileges to run network-related commands.

## Usage

- `/.wifi.sh <SSID>`

### Script Arguments

The script accepts one argument: the name of the WiFi network to connect to. Currently, it supports the following networks:

- `<SSID>`

### Running the Script

1. **Make the script executable:**

    ```sh
    chmod +x wifi.sh
    ```

2. **Run the script with the desired SSID as an argument:**

    ```sh
    ./wifi.sh mywifi
    ```

## Example

```sh
./wifi.sh mywifi
# Output:
# Switching to mywifi
# Connected successfully.
