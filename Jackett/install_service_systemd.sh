#!/bin/bash

#Setting up colors
BOLDRED="$(printf '\033[1;31m')"
BOLDGREEN="$(printf '\033[1;32m')"
NC="$(printf '\033[0m')" # No Color

# Stop and unload the service if it's running
jackettservice="jackett.service"
systemctl stop ${jackettservice}

# Move working directory to Jackett's
cd "$(dirname "$0")"

# Check if we're running from Jackett's directory
if [ ! -f ./jackett ]; then
echo "${BOLDRED}ERROR${NC}: Couldn't locate jackett. Is the script in the right directory?"
    exit 1
fi
jackettdir="$(pwd)"

# Check if Jackett's owner is root
jackettuser="$(stat -c "%U" ./jackett)"
if [ "${jackettuser}" == "root" ]; then
echo "${BOLDRED}ERROR${NC}: Jackett shouldn't run as root. Please, change the owner of the Jackett directory."
    exit 1
fi

# Check that no other service called Jackett is already running
if [[ $(systemctl status ${jackettservice} | grep "active (running)") ]]; then
    echo "${BOLDRED}ERROR${NC}: Jackett already seems to be running as a service. Please stop it before running this script again."
    exit 1
fi

# Write the systemd service descriptor
cat >"/etc/systemd/system/${jackettservice}" <<EOL
[Unit]
Description=Jackett Daemon
After=network.target

[Service]
SyslogIdentifier=jackett
Restart=always
RestartSec=5
Type=simple
User=${jackettuser}
Group=${jackettuser}
WorkingDirectory=${jackettdir}
ExecStart=${jackettdir}/jackett --NoRestart
TimeoutStopSec=20

[Install]
WantedBy=multi-user.target

EOL

# Reload systemd daemon
systemctl daemon-reload

# Enable the service for following restarts
systemctl enable ${jackettservice}

# Run the service
systemctl start ${jackettservice}

# Check that it's running
if [[ $(systemctl status ${jackettservice} | grep "active (running)") ]]; then
    echo "${BOLDGREEN}Agent successfully installed and launched!${NC}"
else
    cat << EOL
${BOLDRED}ERROR${NC}: Could not launch service. The installation might have failed.
Please open an issue on https://github.com/Jackett/Jackett/issues and paste following information:
Jackett directory: \`${jackettdir}\`
Jackett user: \`${jackettuser}\`

EOL
fi
