#!/bin/bash
cd /home/container

## download and install steamcmd
mkdir /home/container/steamcmd
curl -SL -o steamcmd.tar.gz "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz"
tar -xzvf steamcmd.tar.gz -C /home/container/steamcmd
rm /home/container/steamcmd.tar.gz

# install steamm app with steamcmd
./steamcmd/steamcmd.sh +login anonymous +force_install_dir /home/container/app +app_update 376030 +quit

# run the Server
/home/container/app/ShooterGame/Binaries/Linux/ShooterGameServer $MAP?listen
