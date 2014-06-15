# Chef Skeleton Cookbook

[![Apache 2.0 License](http://img.shields.io/badge/license-Apache_2.0-red.svg?style=flat)](./LICENSE.txt)
[![Dependency Status](http://img.shields.io/gemnasium/razor-x/chef-cookbook.svg?style=flat)](https://gemnasium.com/razor-x/chef-cookbook)
[![Build Status](http://img.shields.io/travis/razor-x/chef-cookbook.svg?style=flat)](https://travis-ci.org/razor-x/chef-cookbook)
[![Coverage Status](http://img.shields.io/coveralls/razor-x/chef-cookbook.svg?style=flat)](https://coveralls.io/r/razor-x/chef-cookbook)

Use this project freely as a base for
your testable [Chef] cookbooks.

_Still a work in progress: release coming soon!_

[Chef]: http://www.getchef.com/chef/

## Description

### Features

* Dependency management with [Berkshelf].
* [Rake], [Thor], and [Guard] tasks for included tools.
* Documentation generation with [YARD] using [yard-chef].
* Linting with [RuboCop] and [Foodcritic].
* Unit testing with [ChefSpec].
* Integration testing with [Test Kitchen].
* [Travis CI] ready.
* Badges from [Shields.io]!

[Berkshelf]: http://berkshelf.com/index.html
[ChefSpec]: http://sethvargo.github.io/chefspec/
[Foodcritic]: http://acrmp.github.io/foodcritic/
[Guard]: http://guardgem.org/
[Rake]: https://github.com/jimweirich/rake
[RuboCop]: https://github.com/bbatsov/rubocop
[Shields.io]: http://shields.io/
[Test Kitchen]: http://kitchen.ci/
[Thor]: http://whatisthor.com/
[Travis CI]: https://travis-ci.org/
[YARD]: http://yardoc.org/index.html
[yard-chef]: https://github.com/rightscale/yard-chef

### Usage

This software can be used freely, see [The Unlicense].
The Apache License text appearing in this software is for
demonstration purposes only and does not apply to this software.

1. Clone this repository.
   - The `master` branch can be used for making cookbooks under the Apache 2.0 License.
   - The `copyright` branch can be used for making proprietary cookbooks.

2. Customize this README.
   - Set the title and summary text.
   - Replace the Description section.
   - Remove or update the badges.
   - Customize your requirements.
   - Add documentation for your attributes, recipes, etc.

4. Everything else that should be filled in before using this skeleton
   has been marked with the prefix `replace_`.
   To see a list of what needs to be replaced, run

````bash
$ grep -R replace_
````

Note that `CHANGELOG.md` is just a template for this skeleton.
The actual changes for this project are documented in the commit history
and summarized under [Releases].

[Releases]: https://github.com/razor-x/chef-cookbook/releases
[The Unlicense]: http://unlicense.org/UNLICENSE

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

## Requirements

### Platform

- [Ubuntu](http://www.ubuntu.com/)
- [CentOS](http://www.centos.org/)

**Tested on:**

- Ubuntu 14.04
- CentOS 6.5

## Attributes

Attribute      | Default           | Description
---------------|-------------------|------------
`replace_attr` | `replace_default` | replace_default_description

## Recipes

### default

replace_default_recipe_description

## Development and Testing

### Rake

Run `rake -T` to see all Rake tasks.

````
rake all                          # Run all tasks
rake foodcritic                   # Lint Chef cookbooks
rake kitchen:all                  # Run all test instances
rake kitchen:default-centos-65    # Run default-centos-65 test instance
rake kitchen:default-ubuntu-1404  # Run default-ubuntu-1404 test instance
rake rubocop                      # Run RuboCop
rake rubocop:auto_correct         # Auto-correct RuboCop offenses
rake spec                         # Run RSpec code examples
rake test                         # Run kitchen integration tests
rake yard                         # Generate YARD Documentation
````

### Thor

Run `thor -T` to see all Thor tasks.

### Guard

Guard tasks have been separated into the following groups:

- `doc`
- `lint`
- `unit`
- `integration`

By default, guard will generate documentation, lint, and run unit tests.
The integration group must be selected manually with `guard -g integration`.

## Contributing

Please submit and comment on bug reports and feature requests.

To submit a patch:

1. Fork it (https://github.com/razor-x/chef-cookbook/fork).
2. Create your feature branch (`git checkout -b my-new-feature`).
3. Make changes. Write and run tests.
4. Commit your changes (`git commit -am 'Add some feature'`).
5. Push to the branch (`git push origin my-new-feature`).
6. Create a new Pull Request.

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
