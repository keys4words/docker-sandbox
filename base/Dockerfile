FROM ubuntu:14.04

RUN \
    # sed -i 's/# \(.*multiverse$\)/1/g' /etc/apt/sources.list && \
    apt-get update && \
    apt-get -y upgrade && \
    apt-get install -y build-essential && \
    apt-get install -y software-properties-common && \
    apt-get install -y tmux curl git htop man unzip vim wget && \
    rm -rf /var/lib/apt/lists/*

# ADD root/.bashrc /root/.bashrc
# ADD root/.gitconfig /root/.gitconfig
# ADD root/.scripts /root/.scripts

ENV HOME /root

WORKDIR /root

CMD ["bash"]