FROM ruby:2.5.7

RUN apt-get update && apt-get install -y net-tools

ENV BUNDLER_VERSION=2.0.2

# Install gems
ENV APP_HOME /app
ENV HOME /root
RUN mkdir $APP_HOME
WORKDIR $APP_HOME
COPY Gemfile* $APP_HOME/
RUN gem install bundler -v "$BUNDLER_VERSION" && bundle install

# Upload source
COPY . $APP_HOME