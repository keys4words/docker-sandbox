FROM ubuntu:18.04

RUN apt update && \
  echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections && \
  apt install mc git python3-dev python3-pip -y && \
  pip3 install jupyter

ENV newuser "tester"
RUN useradd -m -d /home/${newuser} ${newuser} && \
  chown -R ${newuser} /home/${newuser} && \
  chmod -R 755 /home/${newuser} && \
  chsh -s /bin/bash ${newuser}
ADD entrypoint.sh /home/${newuser}
RUN chown ${newuser} /home/${newuser}/entrypoint.sh && \
  chmod +x /home/${newuser}/entrypoint.sh 

USER ${newuser}
WORKDIR /home/${newuser}
RUN echo ${USER} && whoami && pwd

# USER root
# WORKDIR /root
ENTRYPOINT [ "/home/tester/entrypoint.sh" ]
EXPOSE 10000