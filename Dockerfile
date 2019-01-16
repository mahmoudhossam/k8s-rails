FROM ruby:2.3-alpine

RUN apk add linux-headers build-base nodejs libpq postgresql-client postgresql-dev tzdata

WORKDIR /usr/src/app
COPY Gemfile* ./
# Fix weird error with tzinfo-data
RUN bundle lock --add-platform x86-mingw32 x86-mswin32 x64-mingw32
RUN bundle install
COPY . .

RUN bundle exec rake RAILS_ENV=production DATABASE_URL=postgresql://user:pass@127.0.0.1/dbname SECRET_TOKEN=pickasecuretoken assets:precompile

CMD bundle exec unicorn -c config/unicorn.rb