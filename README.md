# Batch-script-to-DynHost-update-your-OVH-domain-on-windows-start
A simple batch script to update your OVH domain with the public IP of the computer and start it at windows start.

# Summary
  - Problem
  - Needed
  - Technical explanation
  - Setup
    - OVH API creation
    - Script download and configuration
    - Add script to windows start start
  - Credit

# Problem
I'm using my PC as DIY cloud-gaming when i'm moving.
For this Moonlight with Nvidia protocols is a very good software and work easily over internet.
But I need to attack moonlight on my public IP, and in France it regularly change.
So I'm using a web domain bought from OVH and I want to update this IP everytime my computer is booting to be sure to keep access to it from everywhere.
(My computer is on a smart power outlet from Tuya that I control with their app. The motherboard is configured as "Power On" boot option is true. So it's booting when I'm activating the smart power outlet.)

# Needed
  - A web domain bought from OVH
  - Computer on windows OS

# Technical explanation
  - I'm activating the smart power outlet
  - PC is booting
  - Windows launch a .bat file with script at start
  - The script is taking his public IP and ask to update the OVH dynhost over their own API
  
# Setup
  - OVH API creation
    - Go to : https://www.ovh.com/manager/#/web/domain
    - Select your domain to use > Go to "DynHost" tab > "Manage Access" > "Create ID"
    - Complete and save information ! The ID and password are your credentials to the API.
    - If it's not already exist, create the DynHost to use (ex : www.mydomain.ovh) and put a random IP
  - Script download and configuration
    - Download the git file "updateIP.bat"
    - Open with an editor and replace :
      - YourDomain by the web domain you create in DynHost
      - YourID by the ID you create to manage DynHost
      - YourPassword by the one create with the ID to manage DynHost
    - Save the file
  - Add script to windows start start
    - Create a shortcut of this file
    - Win+R and type "shell:startup" and press Enter
    - It open a folder, drop the shortcut in
    - File and exe in this folder are execute at windows start

Now you can enjoy the automatic IP update when windows start !

# Credit
tainalo2 - 01/2023 - streaming tools creator : www.purpletwit.com
