# OpenWrt-Force-LTE-Watchdog
Monitoring script for OpenWrt that sets LTE network preference, restarts the WAN interface on startup, and checks connectivity every 10 minutes by pinging 8.8.8.8. If the ping fails, it automatically restarts the connection, ensuring network stability and continuity.

🛠️ Steps to follow via LuCI

1. Access LuCI

Open your browser and go to your router's IP address (usually 192.168.1.1)

Enter your username and password

2. Go to "System" → "Startup"

Click on "System" in the top menu

Then select "Startup"

3. Find the “Local Startup” section

Scroll down to the box labeled “Local Startup”

This contains the content of the /etc/rc.local file

4. Insert the script into the rc.local file

You have two options:

📌 Installation: Insert the commands directly into rc.local



This is quick and simple. You place the commands inside the rc.local file before the line exit 0.

🔄 Note: Using parentheses () and & at the end runs the block in the background, so system boot won't be delayed.
