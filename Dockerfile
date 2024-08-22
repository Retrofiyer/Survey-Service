# Etapa 1: Construcción
FROM ruby:3.3.4-alpine AS build

RUN apk add --no-cache build-base

WORKDIR /app

COPY Gemfile Gemfile.lock ./

RUN bundle install --without development test

COPY . .

RUN mkdir -p /dist && cp -r . /dist

FROM ruby:3.3.4-alpine

WORKDIR /app

RUN apk add --no-cache libstdc++ sqlite-libs

COPY --from=build /dist /app

ENTRYPOINT ["ruby", "app.rb"]