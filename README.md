# Skeleton Cookbook

[![Apache 2.0 License](http://img.shields.io/badge/license-Apache_2.0-red.svg)](./LICENSE.txt)
[![Dependency Status](http://img.shields.io/gemnasium/razor-x/chef-cookbook.svg)](https://gemnasium.com/razor-x/chef-cookbook)
[![Build Status](http://img.shields.io/travis/razor-x/chef-cookbook.svg)](https://travis-ci.org/razor-x/chef-cookbook)

_Still a work in progress: release coming soon!_

## Description

**This is a basic Chef cookbook skeleton.**

This software can be used freely, see [The Unlicense].
The Apache License text appearing in this software is for
demonstration purposes only and does not apply to this software.

Note that `CHANGELOG.md` is just a template for this skeleton.
The actual changes for this project are documented in the commit history
and summarized under [Releases].

[The Unlicense]: http://unlicense.org/UNLICENSE
[Releases]: https://github.com/razor-x/chef-cookbook/releases

### Features

* Dependency management with [Berkshelf].
* [Rake], [Thor], and [Guard] tasks for included tools.
* Documentation generation with [YARD] using [yard-chef].
* Linting with [RuboCop] and [Foodcritic].
* Unit testing with [ChefSpec].
* Integration testing with [Test Kitchen].

[Berkshelf]: http://berkshelf.com/index.html
[ChefSpec]: http://sethvargo.github.io/chefspec/
[Foodcritic]: http://acrmp.github.io/foodcritic/
[Guard]: http://guardgem.org/
[Rake]: https://github.com/jimweirich/rake
[RuboCop]: https://github.com/bbatsov/rubocop
[Test Kitchen]: http://kitchen.ci/
[Thor]: http://whatisthor.com/
[YARD]: http://yardoc.org/index.html
[yard-chef]: https://github.com/rightscale/yard-chef

### Usage

1. Clone this repository.
   - The `master` branch can be used for making cookbooks under the Apache 2.0 License.
   - The `copyright` branch can be used for making proprietary cookbooks.

2. Customize this README.
   - Set the title.
   - Replace the Description section.
   - Remove or update the badges.

4. Everything else that should be filled in before using this skeleton
   has been marked with the prefix `replace_`.
   To see a list of what needs to be replaced, run

````bash
$ grep -R replace_
````

#### Add future update support

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

## Contributing

Please submit and comment on bug reports and feature requests.

To submit a patch:

1. Fork it (https://github.com/razor-x/chef-cookbook/fork).
2. Create your feature branch (`git checkout -b my-new-feature`).
3. Commit your changes (`git commit -am 'Add some feature'`).
4. Push to the branch (`git push origin my-new-feature`).
5. Create a new Pull Request.

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
