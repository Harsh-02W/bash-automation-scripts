#!/bin/bash

: <<DISCLAIMER
This script helps manage packages on Debian-based systems.

Features:
- View installed packages using dpkg
- View packages installed via apt
- View snap packages
- Install packages only if they are not already installed

Make sure you have sudo privileges before running installation.
DISCLAIMER

echo "========== Package Helper Script =========="
echo "1) List all installed packages (dpkg)"
echo "2) List packages installed via apt"
echo "3) List snap packages"
echo "4) Install packages"
echo "5) Exit"
echo "==========================================="

read -p "Choose an option: " choice

case $choice in

1)
    echo "Listing packages using dpkg..."
    dpkg -l
    ;;

2)
    echo "Listing packages installed via apt..."
    apt list --installed
    ;;

3)
    echo "Listing installed snap packages..."
    snap list
    ;;

4)
    read -p "Enter package names (space separated): " packages

    to_install=""

    echo "Checking package status..."

    for pkg in $packages
    do
        if dpkg -s "$pkg" >/dev/null 2>&1; then
            echo "$pkg is already installed."
        else
            echo "$pkg is not installed."
            to_install="$to_install $pkg"
        fi
    done

    if [[ -z "$to_install" ]]; then
        echo "All packages are already installed."
        exit 0
    fi

    echo "The following packages will be installed:$to_install"
    read -p "Do you want to continue? (y/n): " confirm

    if [[ "$confirm" != "y" ]]; then
        echo "Installation cancelled."
        exit 0
    fi

    echo "Updating package list..."
    sudo apt update

    echo "Installing packages..."
    sudo apt install -y $to_install

    echo "Installation complete."
    ;;

5)
    echo "Exiting script."
    exit 0
    ;;

*)
    echo "Invalid option."
    ;;

esac