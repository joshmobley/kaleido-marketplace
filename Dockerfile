FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /kaleido-marketplace
WORKDIR /kaleido-marketplace
COPY Gemfile /kaleido-marketplace/Gemfile
COPY Gemfile.lock /kaleido-marketplace/Gemfile.lock
RUN bundle install
COPY . /kaleido-marketplace
