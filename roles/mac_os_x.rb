name 'mac_os_x'
description 'Role applied to all Mac OS X systems.'
run_list(
  'role[base]',
  'recipe[homebrew]'
)
default_attributes(
  'virtualbox' => {
    'urlbase' => 'http://download.virtualbox.org/virtualbox/4.2.10',
    'version' => 'VirtualBox-4.2.10-84104'
  },
  'rbenv' => {
    'create_profiled' => false
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

