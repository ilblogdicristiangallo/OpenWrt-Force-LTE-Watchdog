# OpenWrt-Force-LTE-Watchdog
Monitoring script for OpenWrt that sets LTE network preference, restarts the WAN interface on startup, and checks connectivity every 10 minutes by pinging 8.8.8.8. If the ping fails, it automatically restarts the connection, ensuring network stability and continuity.
