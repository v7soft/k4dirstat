 FROM v7soft/baseimage
 RUN apt-get update && apt-get -y install xauth k4dirstat openssh-server && locale-gen en_US.UTF-8 && sed -i "s/UsePrivilegeSeparation.*/UsePrivilegeSeparation no/g; s/#UsePAM.*/UsePAM no/g; s/PermitRootLogin.*/PermitRootLogin yes/g" /etc/ssh/sshd_config && echo root:root | chpasswd && apt-get clean
 ENTRYPOINT ["/bin/sh","-c"]
 CMD /usr/sbin/sshd -D
