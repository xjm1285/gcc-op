FROM gcc
MAINTAINER Jimmy Xiao <xjm1285@gmail.com>

RUN echo "deb http://mirrors.ustc.edu.cn/debian jessie main contrib non-free" > /etc/apt/sources.list && \
    echo "deb-src http://mirrors.ustc.edu.cn/debian jessie main contrib non-free" >> /etc/apt/sources.list && \
    echo "deb http://mirrors.ustc.edu.cn/debian jessie-proposed-updates main contrib non-free" >> /etc/apt/sources.list && \
    echo "deb-src http://mirrors.ustc.edu.cn/debian jessie-proposed-updates main contrib non-free" >> /etc/apt/sources.list && \
    echo "deb http://mirrors.ustc.edu.cn/debian jessie-updates main contrib non-free" >> /etc/apt/sources.list && \
    echo "deb-src http://mirrors.ustc.edu.cn/debian jessie-updates main contrib non-free" >> /etc/apt/sources.list
RUN apt-get -qq update && \
    apt-get install -qq --no-install-recommends gawk unzip bsdmainutils && \
    rm -rf /var/lib/apt/lists/*
    
