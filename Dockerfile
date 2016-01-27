FROM gcc
MAINTAINER Jimmy Xiao <xjm1285@gmail.com>

COPY sources.list /etc/apt/sources.list
RUN apt-get -qq update && \
    apt-get install -qq --no-install-recommends gawk unzip bsdmainutils && \
    rm -rf /var/lib/apt/lists/*
    
