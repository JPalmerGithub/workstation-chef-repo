### Purpose
This repo contains Chef cookbooks, data bags, and roles suitable for configuring my Linux and OS X workstations.

### Basic usage

    chef-solo -c ./solo.rb -o 'role[workstation]'

### Where to add new things

1. `data_bags/workstation.json`: packages (dmg), zip apps, Homebrew packages, plists, dirs
2. `roles/base.json`: rubies and gems
3. `roles/workstation.json`: `defaults write` settings
