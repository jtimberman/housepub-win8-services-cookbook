#
# Cookbook Name:: housepub-win8-services
# Recipe:: default
#
# Copyright 2015 Joshua Timberman
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

node['win8-services'].each do |svc, data|
  windows_service svc do
	startup_type data['startup_type']
	action [:configure_startup, data['action']].flatten
  end
end	