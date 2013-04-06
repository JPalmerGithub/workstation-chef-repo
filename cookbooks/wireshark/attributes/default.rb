#
# Author:: Nick Lopez <nlopez@gmail.com>
# Copyright:: Copyright (c) 2013, Nick Lopez
# License:: Apache License, Version 2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

default['wireshark']['version'] = "1.8.6"
default['wireshark']['url'] = "http://wiresharkdownloads.riverbed.com/wireshark/osx/Wireshark%20#{node['wireshark']['version']}%20Intel%2064.dmg"
default['wireshark']['checksum'] = "b64dd20ab8817c00875475d9e40363cdf20b80eea9b649990b33da16b118c8cec17aed0186999154ed3892bba181203caeff6de05969a7cf469d866e25263385"
