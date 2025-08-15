FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y \
        sudo \
        openssh-server \
        build-essential \
        gcc-arm-none-eabi \
        gcc-arm-linux-gnueabihf \
        g++-arm-linux-gnueabihf \
        qemu-system-arm \
        qemu-user-static \
        gdb-multiarch \
        make \
        nano \
        git \
        curl && \
    apt-get clean

RUN useradd -ms /bin/bash vscode && echo "vscode:vscode" | chpasswd
RUN echo "vscode ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
RUN mkdir /var/run/sshd
EXPOSE 22

USER vscode
WORKDIR /workspaces/${GITHUB_REPOSITORY:-ubuntu-dev}
