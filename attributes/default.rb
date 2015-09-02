#
# Cookbook Name:: i3
# Attributes:: default
#
# Copyright 2013-2014, Thomas Boerger <thomas@webhippie.de>
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

default["i3"]["packages"] = value_for_platform_family(
  "debian" => %w(
    rxvt-unicode
    i3
    i3lock
    i3status
    dmenu
  ),
  "suse" => %w(
    rxvt-unicode
    i3
    i3lock
    i3status
    dmenu

    pavucontrol
    pulseaudio
    pulseaudio-utils
  )
)

default["i3"]["zypper"]["enabled"] = true
default["i3"]["zypper"]["alias"] = "x11-windowmanagers"
default["i3"]["zypper"]["title"] = "X11 Windowmanagers"
default["i3"]["zypper"]["repo"] = "http://download.opensuse.org/repositories/X11:/windowmanagers/openSUSE_#{node["platform_version"].to_i.to_s == node["platform_version"] ? "Tumbleweed" : node["platform_version"]}/"
default["i3"]["zypper"]["key"] = "#{node["i3"]["zypper"]["repo"]}repodata/repomd.xml.key"
