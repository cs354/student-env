FROM kalilinux/kali
RUN apt-get update && apt-get install -y metasploit-framework #make this its own line so the image builds faster if add other things below
RUN apt-get update && apt-get install -y build-essential gdb vim python3 netcat iptables dnsutils 
