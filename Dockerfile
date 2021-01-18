FROM node
LABEL maintainer="MittWillson"
RUN apt-get update \
    && apt-get install -y openssh-server \
    && rm -rf /var/lib/apt/lists/* \
    && mkdir /var/run/sshd \
    && sed -i 's/#PermitRootLogin .*/PermitRootLogin yes/g' /etc/ssh/sshd_config \
    && echo 'root:devnode' | chpasswd
EXPOSE 22
EXPOSE 3000
CMD ["/usr/sbin/sshd", "-D"]