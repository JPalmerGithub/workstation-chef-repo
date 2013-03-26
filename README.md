Basic usage

    chef-solo -c ./solo.rb -j ./roles/workstation.json

Where to add new things

1. `data_bags/workstation.json`: packages (dmg), Homebrew packages, plists, dirs
2. `roles/base.json`: rubies and gems
3. `roles/workstation.json`: `defaults write` settings