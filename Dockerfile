FROM ruby:2.5.1

RUN apt-get update && \
    apt-get install -y mysql-client nodejs vim --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir /superd_view

WORKDIR /superd_view

ADD Gemfile /superd_view/Gemfile
ADD Gemfile.lock /superd_view/Gemfile.lock

RUN gem install bundler
RUN bundle install

ADD . /superd_view

RUN mkdir -p tmp/sockets