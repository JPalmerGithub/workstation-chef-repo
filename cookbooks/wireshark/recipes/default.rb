#
# Cookbook Name:: wireshark
# Recipe:: default
#
# Copyright 2013, Nick Lopez
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
include_recipe "xquartz"

dmg_package "Wireshark" do
  source node['wireshark']['url']
  checksum node['wireshark']['checksum']
  volumes_dir "Wireshark"
  app "Wireshark #{node['wireshark']['version']} Intel 64"
  package_id "org.wireshark.Wireshark.pkg"
  type "pkg"
end
