#!/usr/bin/env bash
# Ensure we can execute chef-client from the Omnibus Installer path before
# we get started
readonly CHEF="/opt/chef/bin/chef-client"
if [ ! -x "$CHEF" ]; then
  echo "Can't execute "$CHEF"" >&2
  echo "Install Chef using the Omnibus Installer" >&2
  echo "http://docs.opscode.com/install_omnibus.html" >&2
  exit 1
fi

# Make sure we're using system Ruby and not something overriden by rvm or
# rbenv - Homebrew in particular relies on this and does similar in its
# `brew` shell wrapper
unset GEM_HOME GEM_PATH
here="$(dirname "$0")"
eval "$CHEF -z -c $here/solo.rb -o 'role[workstation]' -l fatal"
