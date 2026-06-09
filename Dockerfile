FROM ubuntu:26.04
RUN apt update                              && \
    apt -y upgrade                          && \
    apt install -y curl                     && \
    apt install -y vim                      && \
    apt install -y python3                  && \
    apt install -y python3-pip              && \
    apt install -y python3-virtualenv       && \
    apt install -y python3-poetry           && \
    apt install -y gawk                     && \
    echo done

USER ubuntu
RUN curl -LsSf https://astral.sh/uv/install.sh | sh  && \
    curl -fsSL https://github.com/cashapp/hermit/releases/download/stable/install.sh | /bin/bash && \
    echo done

# gawk was needed due to a bug
RUN echo Install Codex   && \
    curl -fsSL https://chatgpt.com/codex/install.sh | CODEX_NON_INTERACTIVE=1 sh && \
    echo done

RUN echo Install Antigravity   && \
    curl -fsSL https://antigravity.google/cli/install.sh | bash  && \
    echo done

RUN echo Install GitHub co-pilot CLI   && \
    curl -fsSL https://gh.io/copilot-install | bash  && \
    echo done

COPY bashrc /home/ubuntu/.bashrc
USER root
RUN chown ubuntu:ubuntu /home/ubuntu/.bashrc

WORKDIR /opt
