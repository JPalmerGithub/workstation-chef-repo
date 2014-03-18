#!/usr/bin/env bash
here="$(dirname "$0")"
bundle check || bundle install
bundle exec chef-client -z -c "$here/solo.rb" -o 'role[workstation]' -l fatal -Fnyan "$@"
