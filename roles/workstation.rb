name 'base'
description 'Role applied to all Mac OS X systems.'
run_list(
  'recipe[git]',
  'recipe[ruby_build]',
  'recipe[rbenv::user]',
  'recipe[users]',
  'recipe[workstation]',
  'recipe[mac_os_x::settings]',
  'recipe[mac_os_x::firewall]',
  'recipe[zip_app::data_bag]',
  # Additional applications that have their own cookbooks
  'recipe[oh-my-zsh-solo]',
  'recipe[iterm2]',
  'recipe[virtualbox]',
  'recipe[1password]',
  'recipe[xquartz]',
  'recipe[wireshark]',
  # Roles
  'role[mac_os_x]'
)
default_attributes(
  'iterm2' => {
    'version' => 'v1_0_0'
  }
)

