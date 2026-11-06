FROM ruby:4.0.9-slim-trixie
WORKDIR /app
COPY config.ru .
COPY Gemfile* ./
RUN apt-get update \
 && apt-get install -y --no-install-recommends build-essential \
 && rm -rf /var/lib/apt/lists/*
RUN BUNDLE_FROZEN=true bundle install
CMD ["bundle", "exec", "rackup"]
