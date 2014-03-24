#!/usr/bin/env bash
# Ensure we can execute chef-client from the Omnibus Installer path before
# we get started
readonly CHEF="/opt/chef/bin/chef-client"
if [ ! -x "$CHEF" ]; then
  echo "Can't find Chef at $CHEF, running the Omnibus Installer" >&2
  \curl -sSL https://www.opscode.com/chef/install.sh | sudo bash
fi

# Make sure we're using system Ruby and not something overriden by rvm or
# rbenv - Homebrew in particular relies on this and does similar in its
# `brew` shell wrapper
unset GEM_HOME GEM_PATH
here="$(dirname "$0")"
eval "$CHEF -z -c $here/solo.rb -o 'role[workstation]' -l fatal"
