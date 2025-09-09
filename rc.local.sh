#!/bin/sh
# Custom initialization script
# Runs once after system startup.

# Log script start
logger "Script STARTED!"

# Wait for the system to be fully operational
sleep 20

# Set network preference to LTE
logger "Setting network preference to LTE"
uqmi -d /dev/cdc-wdm0 --set-network-preference LTE

# Wait before restarting WAN interface
logger "Restarting WAN interface in 10 seconds"
sleep 10

# Restart the WAN interface
logger "Restarting WAN interface now"
ifup wan

# Start periodic connectivity check
logger "Starting periodic connectivity check to 8.8.8.8 (every 10 minutes)"

while true; do
    if ! ping -c 3 -W 3 8.8.8.8 >/dev/null 2>&1; then
        logger "Ping FAILED! Restarting WAN interface"
        ifup wan
    else
        logger "Ping successful, connection OK"
    fi
    # Wait 10 minutes (600 seconds) before the next check
    sleep 600
done

# End of script
logger "Script FINISHED"
exit 0
