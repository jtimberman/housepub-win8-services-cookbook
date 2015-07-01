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

default['win8-services'].tap do |svc|
  svc['AppMgmt'] = { 'startup_type' => :disabled, 'action' => [:disable, :stop]}
  svc['bthserv'] = { 'startup_type' => :disabled, 'action' => [:disable, :stop]}
  svc['PeerDistSvc'] = { 'startup_type' => :disabled, 'action' => [:disable, :stop]}
  svc['CertPropSvc'] = { 'startup_type' => :disabled, 'action' => [:disable, :stop]}
  svc['TrkWks'] = { 'startup_type' => :disabled, 'action' => [:disable, :stop]}
  svc['WPCSvc'] = { 'startup_type' => :disabled, 'action' => [:disable, :stop]}
  svc['iphlpsvc'] = { 'startup_type' => :disabled, 'action' => [:disable, :stop]}
  svc['MSiSCSI'] = { 'startup_type' => :disabled, 'action' => [:disable, :stop]}
  svc['Netlogon'] = { 'startup_type' => :disabled, 'action' => [:disable, :stop]}
  svc['napagent'] = { 'startup_type' => :disabled, 'action' => [:disable, :stop]}
  svc['CscService'] = { 'startup_type' => :disabled, 'action' => [:disable, :stop]}
  svc['RpcLocator'] = { 'startup_type' => :disabled, 'action' => [:disable, :stop]}
  svc['SensrSvc'] = { 'startup_type' => :disabled, 'action' => [:disable, :stop]}
  svc['SNMPTRAP'] = { 'startup_type' => :disabled, 'action' => [:disable, :stop]}
  svc['WbioSrvc'] = { 'startup_type' => :disabled, 'action' => [:disable, :stop]}
  svc['wcncsvc'] = { 'startup_type' => :disabled, 'action' => [:disable, :stop]}
  svc['WMPNetworkSvc'] = { 'startup_type' => :disabled, 'action' => [:disable, :stop]}
end
