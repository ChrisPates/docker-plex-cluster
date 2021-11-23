FROM s6on/debian

ENV DEBIAN_FRONTEND noninteractive

# update install
RUN apt-get update -y && apt-get upgrade -y && \
\
# install nginx and dependancies
    apt-get -y install nginx openssl curl gettext-base

# Add user
RUN useradd -U -d /config -s /bin/false nginx && \
    usermod -G users nginx && \
\
# Setup directories
    mkdir -p \
    /data && \
    touch /var/log/nginx/plex.log

# Cleanup
RUN apt-get -y autoremove && \
    apt-get -y clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/* && \
    rm -rf /var/tmp/*

# add local files
COPY root/ /

EXPOSE 32300 

ENTRYPOINT ["/init"]
HEALTHCHECK NONE
