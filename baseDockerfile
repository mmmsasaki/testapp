FROM rails:latest

RUN mkdir /app

# use bundle container & set RAILS_ENV
ENV BUNDLE_GEMFILE=/app/Gemfile \
    BUNDLE_JOBS=2 \
    BUNDLE_PATH=/bundle \
    RAILS_ENV=development

WORKDIR /app

# bundle
ADD Gemfile* /app/
RUN bundle install --jobs 20 --retry 5

ADD . /app
