#!/usr/bin/env bash
readonly url_homebrew="https://raw.github.com/mxcl/homebrew/go"
readonly url_xcode_cltools="http://goo.gl/7pXDw"
# install homebrew
if ! hash brew 2>/dev/null; then ruby -e "$(curl -fsSL $url_homebrew)"; fi
# install os x command line tools dmg
if [ ! $(pkgutil --pkgs="com.apple.pkg.DeveloperToolsCLI") ]; then
  curl -L "$url_xcode_cltools" > cltools.dmg
  volume="$(hdiutil attach -nobrowse cltools.dmg | sed -n 's/^.*\(\/Volumes.*\)$/\1/p')"
  sudo installer -package "$volume/Command Line Tools (Mountain Lion).mpkg" -target /
  hdiutil detach "$volume"
fi
# verify homebrew is good to go
brew doctor
brew tap homebrew/dupes # optional
# get a sane and recent ruby
brew install rbenv ruby-build
rbenv install 1.9.3-p392
# ensure our bootstrap script is using our new ruby
rbenv global 1.9.3-p392
eval "$(rbenv init -)"
ruby --version # sanity check
# install chef and make it available to our script
gem install chef --no-rdoc --no-ri
rbenv rehash
# you're now ready to run chef-solo!
chef-solo -c ./solo.rb -j ./roles/workstation.json
