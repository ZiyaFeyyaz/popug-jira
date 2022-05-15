FROM ruby:3.0.2-buster

WORKDIR /task-manager

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

ADD . /task-manager
ENV RAILS_LOG_TO_STDOUT true

ENTRYPOINT ["sh", "-c"]
