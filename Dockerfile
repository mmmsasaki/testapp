FROM mmmsasaki/testapp:latest

# bundle
ADD Gemfile* /app/
RUN bundle install --jobs 20 --retry 5

ADD . /app
