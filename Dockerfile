
FROM ubuntu

RUN apt-get update &&\
    apt-get install -y --no-install-recommends build-essential curl git m4 ruby texinfo libbz2-dev libcurl4-openssl-dev libexpat-dev libncurses-dev zlib1g-dev &&\
    git clone https://github.com/Homebrew/linuxbrew.git ~/linuxbrew &&\
    ~/linuxbrew/bin/brew install hello &&\
    apt-get remove -y build-essential curl git m4 ruby texinfo libbz2-dev libcurl4-openssl-dev libexpat-dev libncurses-dev zlib1g-dev &&\
    apt-get clean && \
    apt-get purge && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENTRYPOINT ["/root/linuxbrew/bin/hello"]

