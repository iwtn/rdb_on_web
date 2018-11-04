FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /rdb_on_web
WORKDIR /rdb_on_web
COPY Gemfile /rdb_on_web/Gemfile
COPY Gemfile.lock /rdb_on_web/Gemfile.lock
RUN bundle install
COPY . /rdb_on_web
