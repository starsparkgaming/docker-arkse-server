FROM        ubuntu:latest

RUN         dpkg --add-architecture i386 \
            && apt update \
            && apt upgrade -y \
            && apt install -y tar curl lib32gcc1 libgcc1 ca-certificates \
            && useradd -m -d /home/container container

USER        container

ENV         HOME /home/container
ENV         NAME "Ark Docker Server"
ENV         MAP "TheIsland"
ENV         PASSWORD ""
ENV         ADMINPASSWORD "12345"

WORKDIR     /home/container

COPY        ./entrypoint.sh /entrypoint.sh
CMD         ["/bin/bash", "/entrypoint.sh"]
