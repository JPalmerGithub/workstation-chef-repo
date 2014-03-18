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
  }
)
