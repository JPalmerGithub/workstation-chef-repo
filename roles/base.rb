name 'base'
description 'base role for all nodes'
default_attributes(
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
  }
)
