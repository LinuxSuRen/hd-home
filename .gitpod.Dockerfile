FROM gitpod/workspace-full

ENV PATH /home/linuxbrew/.linuxbrew/bin:$PATH

# More information: https://www.gitpod.io/docs/config-docker/
RUN brew install linuxsuren/linuxsuren/hd
