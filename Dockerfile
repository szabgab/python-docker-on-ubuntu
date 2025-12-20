FROM ubuntu:25.10
RUN apt update                              && \
    apt -y upgrade                          && \
    apt install -y curl                     && \
    apt install -y python3                  && \
    apt install -y python3-pip              && \
    apt install -y python3-virtualenv       && \
    apt install -y python3-poetry           && \
    echo done

USER ubuntu
RUN curl -LsSf https://astral.sh/uv/install.sh | sh  && \
    echo done

COPY bashrc /home/ubuntu/.bashrc
USER root
RUN chown ubuntu:ubuntu /home/ubuntu/.bashrc

WORKDIR /opt
