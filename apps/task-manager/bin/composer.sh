#!/bin/sh

rm -f /app/tmp/pids/server.pid

bin/rake db:create db:migrate db:truncate_all db:seed

bin/rails s -b '0.0.0.0'
