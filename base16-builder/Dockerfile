FROM ruby:2.4.2-alpine3.6

ENV HOST_DIR=. \
  SERVICE_DIR= /service

RUN mkdir $SERVICE_DIR
WORKDIR $SERVICE_DIR
COPY $HOST_DIR/Gem

FROM alpine:3.6

RUN mkdir  -p /usr/local/etc \
  && { \
    echo 'install: --no-document'; \
    echo 'update: --no-document'; \
  } >> /usr/local/etc/gemrc

ENV RUBY_MAJOR 1.9
ENV RUBY_VERSION 1.9.3-p551
ENV RUBY_DOWNLOAD_SHA256 44228297861f4dfdf23a47372a3e3c4c5116fbf5b0e10883417f2379874b55c6
ENV RUBYGEMS_VERSION 1.8.23.2

RUN set -ex \
  && apk add --no-cache --virtual .ruby-builddeps \
    autoconf \
    bison \
    bzip2 \
    bzip2-dev \
    ca-certificates \
    coreutils \
    curl \
    gcc \
    gdbm-dev \
    glib-dev \
    libc-dev \
    libffi-dev \
    libxml2-dev \
    libxslt-dev \
    linux-headers \
    make \
    ncurses-dev \
    openssl-dev \
    procps \
    readline-dev \
    ruby \
    yaml-dev \
    zlib-dev \
  && curl -fSL -o ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" \
  && echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - \
  && mkdir -p /usr/src/ruby \
  && tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 \
  && rm  ruby.tar.xz \
  && cd /usr/src/ruby \
  && { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c \
  && { echo '#include <asm/ioctl.h>'; echo; cat io.c; } > io.c.new && mv io.c.new io.c \
  && autoconf \
  && export ac_cv_func_isnan=yes ac_cv_func_isinf=yes \
  && ./configure --disable-install-doc \
  && make \
  && make install \
  && runDeps="$( \
    scanelf --needed --nobanner --recursive /usr/local \
      | awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' \
      | sort -u \
      | xargs -r apk info --installed \
      | sort -u \
  )" \
  && apk add --virtual .ruby-rundeps $runDeps \
    bzip2 \
    ca-certificates \
    curl \
    libffi-dev \
    openssl-dev \
    yaml-dev \
    procps \
    zlib-dev \
  && apk del .ruby-rundeps \
  && cd / \
  && rm -r /usr/src/ruby \
  && gem update --system "$RUBYGEMS_VERSION"

ENV BUNDLER_VERSION 1.15.4
RUN gem install bundler --version "$BUNDLER_VERSION"
ENV GEM_HOME /usr/local/bundle

ENV BUNDLE_PATH="$GEM_HOME" \
  BUNDLE_BIN="$GEM_HOME/bin" \
  BUNDLE_APP_CONFIG="$GEM_HOME"

ENV PATH $BUNDLE_BIN:$PATH

RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" \
  && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"

CMD ["irb"]
