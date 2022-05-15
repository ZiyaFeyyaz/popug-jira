FROM ruby:3.0.2-buster

WORKDIR /auth

RUN apt update -q \
    && apt upgrade -y \
    && apt install -y \
    git \
    libxml2-dev \
    libxslt-dev \
    imagemagick \
    && gem install bundler

COPY Gemfile Gemfile.lock ./

RUN bundle config build.nokogiri --use-system-libraries \
    && bundle install -j=$(nproc)

ADD . /auth
ENV RAILS_LOG_TO_STDOUT true

ENTRYPOINT ["sh", "-c"]
