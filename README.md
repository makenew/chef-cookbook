# replace_name Cookbook

[![Apache 2.0 License](http://img.shields.io/badge/license-Apache_v2-red.svg)](./LICENSE.txt)

## Description

Replace this section in your README.

**This is a basic Chef cookbook skeleton.**

_The `master` branch can be used for making cookbooks under the Apache 2.0 License._
_The `copyright` branch can be used for making proprietary cookbooks._

This software can be used freely:
[The Unlicense](http://unlicense.org/UNLICENSE).
The Apache License text appearing in this software is for
demonstration purposes only and does not apply to this software.

Everything that should be filled in before using this skeleton
has been marked with the prefix `replace_`.
To see a list of what needs to be replaced, run

````bash
$ grep -R replace_
````

### Features

* Dependency management with [Berkshelf](http://berkshelf.com/index.html).
* [Rake](https://github.com/jimweirich/rake) and [Thor](http://whatisthor.com/)
  tasks for included tools.
* Documentation generation with [yard-chef](https://github.com/rightscale/yard-chef).
* Linting with [RuboCop](https://github.com/bbatsov/rubocop)
  and [Foodcritic](http://acrmp.github.io/foodcritic/)
* Unit testing with [ChefSpec](http://sethvargo.github.io/chefspec/).
* Integration testing with [Test Kitchen](http://kitchen.ci/).

### Add future update support

If you want to merge in future updates from this skeleton and have your own origin,
set up a separate branch to track this.

````bash
$ git remote rename origin upstream
$ git branch chef-cookbook
$ git branch -u upstream/master chef-cookbook
````

Then add an origin and push master

````bash
$ git remote add origin git@github.com:username/chef-cookbook.git
$ git push -u origin master
````

Now, the `chef-cookbook` branch will pull changes from this project,
which you can then merge into your other branches.

If you later clone your repo you will need to create the update branch again.

````bash
$ git remote add upstream https://github.com/razor-x/chef-cookbook.git
$ git fetch upstream
$ git checkout -b chef-cookbook upstream/master
````

## License

Copyright replace_yyyy replace_name_of_copyright_owner

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

## Warranty

This software is provided "as is" and without any express or
implied warranties, including, without limitation, the implied
warranties of merchantibility and fitness for a particular
purpose.
