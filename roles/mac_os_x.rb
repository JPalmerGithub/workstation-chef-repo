name 'mac_os_x'
description 'Role applied to all Mac OS X systems.',
override_attributes(
  'rbenv' => {
    'create_profiled' => false
  }
)
run_list(
  'role[base]',
  'recipe[homebrew]'
)
