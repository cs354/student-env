FROM kalilinux/kali
RUN apt-get update && apt-get install -y metasploit-framework #make this its own line so the image builds faster if add other things below
RUN apt-get update && apt-get install -y build-essential gdb vim python3 netcat iptables strace python3-pip
RUN pip3 install requests
EXPOSE 3000
ADD password.lst /etc/john