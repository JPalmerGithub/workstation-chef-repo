name 'base'
description 'base role for all nodes'
override_attributes(
  'oh_my_zsh' => {
    'users' => 'nlopez'
  },
  'authorization' => {
    'sudo' => {
      'groups' => ['admin', 'wheel'],
      'users' => 'nlopez',
      'passwordless' => true
    }
  },
  'ruby_build' => {
    'git_ref' => 'v20130227',
    'upgrade' => true,
    'install_pkgs' => []
  },
  'rbenv' => {
    'root_path' => '/usr/local/var/rbenv',
    'install_pkgs' => [],
    'user_installs' => [
      {
        'user' => 'nlopez',
        'rubies' => [ '1.9.3-p392' ],
        'global' => '1.9.3-p392',
        'gems' => {
          '1.9.3-p392' => [
            {'name' => 'chef'},
            {'name' => 'knife-spork'},
            {'name' => 'knife-block'},
            {'name' => 'knife-ec2'},
            {'name' => 'knife-whisk'},
            {'name' => 'knife-config'},
            {'name' => 'bundler'},
            {'name' => 'berkshelf'}
          ]
        }
      }
    ]
  },
  'mac_os_x' => {
    'settings' => {
      'dock' => {
        'domain' => 'com.apple.dock',
        'autohide' => true,
        'autohide-time-modifier' => 0,
        'autohide-delay' => 0,
        'no-glass' => true,
        'orientation' => 'bottom',
        'expose-animation-duration' => '0.1',
        'expose-group-by-app' => false,
        'mineffect' => 'scale',
        'magnification' => false,
        'launchanim' => false,
        'minimize-to-application' => true,
        'show-proces-indicators' => false,
        'tilesize' => '48',
        'size-immutable' => true,
        'dashboard-in-overlay' => true,
        'static-only' => true
      },
      'global' => {
        'domain' => 'NSGlobalDomain',
        'AppleEnableMenuBarTransparency' => false,
        'AppleShowScrollBars' => 'Automatic',
        'KeyRepeat' => 0,
        'NSAutomaticSpellingCorrectionEnabled' => false,
        'NSUserReplacementItemsEnabled' => false,
        'WebAutomaticSpellingCorrectionEnabled' => false,
        'WebAutomaticTextReplacementEnabled' => false,
        'AppleKeyboardUIMode' => 3,
        'NSAutomaticWindowAnimationsEnabled' => false,
        'NSQuitAlwaysKeepsWindows' => false,
        'NSDisableAutomaticTermination' => true,
        'com.apple.swipescrolldirection' => false,
        'AppleShowAllExtensions' => true
      },
      'screensaver' => {
        'domain' => 'com.apple.screensaver',
        'askForPassword' => 1,
        'askForPasswordDelay' => 0
      },
      'finder' => {
        'domain' => 'com.apple.finder',
        'DisableAllAnimations' => true,
        'ShowStatusBar' => true,
        'QLEnableTextSelection' => true,
        '_FXShowPosixPathInTitle' => true,
        'FXDefaultSearchScope' => 'SCcf',
        'FXEnableExtensionChangeWarning' => false,
        'FXPreferredViewStyle' => 'Nlsv'
      }
    }
  }
)
