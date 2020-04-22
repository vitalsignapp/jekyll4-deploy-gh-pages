FROM ruby:2.7.0

# install node for ExecJS support
RUN apt-get update && apt-get install -y nodejs

# install a modern bundler version
RUN gem install bundler

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
