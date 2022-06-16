FROM ruby:2.6.10

# Prepare Rails 5.2.8
RUN gem install rails -v 5.2.8 \
 && curl -sL https://deb.nodesource.com/setup_12.x | bash - \
 && apt-get install -y nodejs \
 && cd root \
 && rails new demo

EXPOSE 3000

WORKDIR /root/demo

RUN bundle install

CMD ["rails", "server", "-b", "0.0.0.0"]
