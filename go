#!/usr/bin/env bash
here="$(dirname "$0")"
chef-solo -c "$here/solo.rb" -o 'role[workstation]'
