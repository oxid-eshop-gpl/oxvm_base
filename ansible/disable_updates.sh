#!/bin/bash

# Disable periodic activities of apt to be safe
sudo cat <<EOF >/etc/apt/apt.conf.d/10periodic;
APT::Periodic::Enable "0";
APT::Periodic::Update-Package-Lists "0";
APT::Periodic::Download-Upgradeable-Packages "0";
APT::Periodic::AutocleanInterval "0";
APT::Periodic::Unattended-Upgrade "0";
EOF

. /etc/lsb-release
USE_COMMON=$(echo "$DISTRIB_RELEASE > 12.04" | bc)

if [[ "$USE_COMMON" -eq "1" ]]; then
  # Disable systemd apt timers/services
  sudo service unattended-upgrades stop;
  sudo systemctl stop apt-daily.timer;
  sudo systemctl stop apt-daily-upgrade.timer;
  sudo systemctl disable apt-daily.timer;
  sudo systemctl disable apt-daily-upgrade.timer;
  sudo systemctl mask apt-daily.service;
  sudo systemctl mask apt-daily-upgrade.service;
  sudo systemctl mask apt-daily.timer
  sudo systemctl mask apt-daily-upgrade.timer
  sudo systemctl daemon-reload;
  # Clean and nuke the package from orbit
  sudo rm -rf /var/log/unattended-upgrades;
  sudo apt-get -y purge unattended-upgrades;
fi

