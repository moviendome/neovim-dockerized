FROM alpine:3.13

LABEL maintainer="estoy@moviendo.me"
LABEL version="1.0"
LABEL description="Neovim Dockerized"

#RUN echo "http://dl-5.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories

RUN apk update && \
    apk upgrade && \
    apk add --no-cache \
    autoconf \
    automake \
    build-base \
    bash \
    curl \
    gcc \
    git \
    grep \
    linux-headers \
    make \
    musl-dev\
    neovim \
    py-pip \
    python3-dev \
    py3-pip \
    ruby \
    ruby-dev \
    ruby-irb \
    jpeg-dev \
    zlib-dev \
    nodejs-npm \
    yarn && \
    rm -rf /var/cache/apk/*

# build, install universal-ctags
RUN \
 git clone https://github.com/universal-ctags/ctags.git ~/ctags && \
 cd ~/ctags && \
 ./autogen.sh && \
 ./configure --program-prefix=u && \
 make && make install && \
 cd ~ && rm -rf ctags

RUN pip3 install --upgrade pip neovim flake8 neovim-remote && \
    gem install --no-document rdoc irb etc json rubocop:1.9.1 rubocop-performance:1.9.2 rubocop-rails:2.9.1 solargraph standardrb

RUN npm install --global prettier eslint-config-prettier eslint-plugin-prettier eslint @babel/eslint-parser eslint-plugin-react typescript

RUN curl -fLo /root/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

COPY .config /root/.config

RUN nvim +PlugInstall! +qa

WORKDIR /usr/src/nvim

ENTRYPOINT ["nvim"]
