name 'mini'
description 'Role applied to all Mac OS X systems.'
run_list(
  'recipe[workstation::mini]',
  'recipe[mac_os_x::settings]',
  'recipe[mac_os_x::firewall]',
  'recipe[oh-my-zsh-solo]',
  # Roles
  'role[mac_os_x]'
)
default_attributes(
)

