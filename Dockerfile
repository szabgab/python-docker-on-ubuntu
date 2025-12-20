FROM ubuntu:25.10
RUN apt update                              && \
    apt -y upgrade                          && \
    echo done

COPY bashrc /home/ubuntu/.bashrc

WORKDIR /opt
