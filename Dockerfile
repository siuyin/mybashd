FROM siuyin/supervisord
MAINTAINER siuyin@beyondbroadcast.com
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list

# Add my bash daemon
RUN mkdir -p /usr/local/bin
ADD my_bash_daemon.sh /usr/local/bin/my_bash_daemon.sh
ADD mybashd.conf /etc/supervisor/conf.d/mybashd.conf

EXPOSE 22 9001
CMD ["/usr/bin/supervisord"]
