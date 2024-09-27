#!/bin/bash

# Fedora Update Script using DNF
# Run this script with sudo

echo "Starting Fedora system update..."

# Refresh the package lists
echo "Refreshing package lists..."
dnf check-update

# Update all packages
echo "Updating all packages..."
dnf -y update

# Upgrade the entire system
echo "Upgrading the entire system..."
dnf -y upgrade --refresh

# Clean up old packages
echo "Cleaning up old packages..."
dnf -y autoremove

# Clean DNF cache
echo "Cleaning DNF cache..."
dnf clean all


echo "Fedora system update completed."
echo "It's recommended to restart your system to ensure all updates take effect."
