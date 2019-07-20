FROM ruby:2.5.3

ENV LANG C.UTF-8

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - \
  && apt-get install -y nodejs

WORKDIR /life_app
ADD Gemfile /Gemfile
ADD Gemfile.lock /Gemfile.lock

RUN bundle install

ENV APP_HOME /life_app
RUN mkdir -p /life_app

WORKDIR /life_app
