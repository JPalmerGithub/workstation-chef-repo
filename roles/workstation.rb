name 'base'
description 'Role applied to all Mac OS X systems.'
run_list(
  'recipe[git]',
  'recipe[users]',
  'recipe[workstation]',
  'recipe[mac_os_x::settings]',
  'recipe[mac_os_x::firewall]',
  'recipe[zip_app::data_bag]',
  # Roles
  'role[mac_os_x]'
)
default_attributes(
  'iterm2' => {
    'version' => '-1_0_0_20130319',
    'checksum' => '9c21d6355bca361af18621f0cdac45babaefd4e73adb4ee09c36e3eaeb1e3f1e',
  }
)

