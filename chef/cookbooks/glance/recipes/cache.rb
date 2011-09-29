#
# Cookbook Name:: glance
# Recipe:: cache
#
# Copyright 2011 Opscode, Inc.
# Copyright 2011 Rackspace, Inc.
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

template node[:glance][:prefetcher_config_file] do
  source "glance-prefetcher.conf.erb"
  owner node[:glance][:user]
  group "root"
  mode 0644
end

template node[:glance][:pruner_config_file] do
  source "glance-pruner.conf.erb"
  owner node[:glance][:user]
  group "root"
  mode 0644
end

template node[:glance][:reaper_config_file] do
  source "glance-reaper.conf.erb"
  owner node[:glance][:user]
  group "root"
  mode 0644
end

template node[:glance][:scrubber_config_file] do
  source "glance-scrubber.conf.erb"
  owner node[:glance][:user]
  group "root"
  mode 0644
end
