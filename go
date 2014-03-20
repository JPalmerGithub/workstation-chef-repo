#!/usr/bin/env bash
here="$(dirname "$0")"
chef-client -z -c "$here/solo.rb" -o 'role[workstation]' -l fatal -Fnyan "$@"
