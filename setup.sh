#!/bin/bash

# 下記if文はrails newが終わった後は消していい
if [ ! -f /usr/src/app/Gemfile ]; then
  rails new . --database=sqlite3 --skip-bundle --force --skip-git
fi

bundle install
bundle exec rails db:migrate
rm -f tmp/pids/server.pid
bundle exec rails server -b 0.0.0.0
