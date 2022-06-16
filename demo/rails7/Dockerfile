FROM ruby:3.1.2

# Prepare Rails 7.0.3
RUN gem install rails -v 7.0.3 \
 && curl -sL https://deb.nodesource.com/setup_12.x | bash - \
 && apt-get install -y nodejs \
 && cd root \
 && rails new demo

EXPOSE 3000

WORKDIR /root/demo

RUN bundle install

CMD ["rails", "server", "-b", "0.0.0.0"]
