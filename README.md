# housepub-win8-services

Manages Windows 8 services on my system. By default it disables the services I don't want to use per [Black Viper's recommendations](http://www.blackviper.com/service-configurations/black-vipers-windows-8-service-configurations/).

I use my Windows 8.1 system for Chef development, so I leave Hyper-V and WinRM alone with this cookbook.

# Requirements

Windows 8.1

# Attributes

See the `attributes/default.rb` for defaults.

- `node['win8-services']`: A list of services that should be managed. Each service should be specified as a sub-key, and should correspond to the actual service name in Windows, such as 'AppMgmt'. The value must be a Hash. The hash should contain the keys `'startup_type'` and `'action'`. Startup type must be specified as a symbol and it corresponds to the `startup_type` property in the `windows_service` [resource](https://docs.chef.io/resource_windows_service.html). The `'action'` can be specified as a symbol or an array of symbols and corresponds to the action that the `windows_service` should take.

# License and Author

- Author: Joshua Timberman <opensource@housepub.org>
- Copyright (c) 2015 Joshua Timberman

```
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
