FROM s6on/debian

ENV DEBIAN_FRONTEND noninteractive

# update install
RUN apt-get update -y && apt-get upgrade -y && \
\
# install node.js and dependancies
    apt-get -y install nodejs npm nuild-essential

# Cleanup
RUN apt-get -y autoremove && \
    apt-get -y clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/* && \
    rm -rf /var/tmp/*

# add local files
COPY root/ /

EXPOSE 32301 

ENTRYPOINT ["/init"]
HEALTHCHECK --interval=5s --timeout=2s --retries=20 CMD /healthcheck.sh || exit 1

