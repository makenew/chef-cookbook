# Chef Cookbook Skeleton

[![Chef cookbook](https://img.shields.io/cookbook/v/makenew-chef_cookbook.svg)](https://supermarket.chef.io/cookbooks/makenew-chef_cookbook)
[![GitHub license](https://img.shields.io/github/license/makenew/chef-cookbook.svg)](./LICENSE.txt)
[![Gemnasium](https://img.shields.io/gemnasium/makenew/chef-cookbook.svg)](https://gemnasium.com/makenew/chef-cookbook)
[![Travis](https://img.shields.io/travis/makenew/chef-cookbook.svg)](https://travis-ci.org/makenew/chef-cookbook)
[![Codecov](https://img.shields.io/codecov/c/github/makenew/chef-cookbook.svg)](https://codecov.io/github/makenew/chef-cookbook)

> Built from [makenew/chef-cookbook](https://github.com/makenew/chef-cookbook).

## Description

Chef cookbook skeleton.

Bootstrap a new [Chef] cookbook in less than a minute.

[Chef]: https://www.chef.io/

### Features

- Dependency management with [Bundler] and [Berkshelf].
- [Rake], [Thor], and [Guard] tasks for included tools.
- Cookbook publishing with [Stove].
- Documentation generation with [YARD] and [knife-cookbook-doc].
- Linting with [RuboCop] and [Foodcritic].
- Unit testing with [ChefSpec].
- Integration testing with [Test Kitchen].
- Code coverage with [SimpleCov] and [codecov].
- [Travis CI] ready.
- [Keep a CHANGELOG].
- Consistent coding with [EditorConfig].
- Badges from [Shields.io].

[Berkshelf]: http://berkshelf.com/
[Bundler]: http://bundler.io/
[ChefSpec]: https://sethvargo.github.io/chefspec/
[codecov]: https://codecov.io/
[EditorConfig]: http://editorconfig.org/
[Foodcritic]: http://www.foodcritic.io/
[Guard]: http://guardgem.org/
[Keep a CHANGELOG]: http://keepachangelog.com/
[knife-cookbook-doc]: http://realityforge.org/knife-cookbook-doc/
[Rake]: https://github.com/jimweirich/rake
[RuboCop]: http://batsov.com/rubocop/
[Shields.io]: http://shields.io/
[SimpleCov]: https://github.com/colszowka/simplecov
[Stove]: https://sethvargo.github.io/stove/
[Test Kitchen]: http://kitchen.ci/
[Thor]: http://whatisthor.com/
[Travis CI]: https://travis-ci.org/
[YARD]: http://yardoc.org/

### Bootstrapping a New Project

1. Clone the master branch of this repository with

   ```
   $ git clone --single-branch https://github.com/makenew/chef-cookbook.git new-chef-cookbook
   $ cd new-chef-cookbook
   ```

   Optionally, reset to the latest [release][Releases] with

   ```
   $ git reset --hard chef-cookbook-v3.2.0
   ```

2. Run

   ```
   $ ./makenew.sh
   ```

   and follow the prompts.
   This will replace the boilerplate, delete itself,
   and stage changes for commit.
   This script assumes the project repository will be hosted on GitHub.
   For an alternative location, you must update the URLs manually.

3. Fill in the README Description section.

4. If [choosing a license][Choose a license] other than the one provided:
   update `LICENSE.txt`, the README License section,
   `metadata.rb`, `attributes/default.rb`,
   and `recipes/default.rb` with your chosen license.

5. Regenerate `README.md` with `$ rake readme`.
   Do not edit `README.md` directly: it will be generated
   from `_README.md.erb` using data from
   `metadata.rb`, and the `.md` files in `/doc`.

6. Optionally, set `require_chef_omnibus` in `.kitchen.yml`
   to a specific Chef version.

[Choose a license]: http://choosealicense.com/
[Releases]: https://github.com/makenew/chef-cookbook/releases
[The Unlicense]: http://unlicense.org/UNLICENSE

### Updating

If you want to pull in future updates from this skeleton,
you can fetch and merge in changes from this repository.

If this repository is already set as `origin`,
rename it to `upstream` with

```
$ git remote rename origin upstream
```

and then configure your `origin` branch as normal.

Otherwise, add this as a new remote with

```
$ git remote add upstream https://github.com/makenew/chef-cookbook.git
```

You can then fetch and merge changes with

```
$ git fetch upstream
$ git merge upstream/master
```

#### Changelog

Note that `CHANGELOG.md` is just a template for this skeleton.
The actual changes for this project are documented in the commit history
and summarized under [Releases].


### Requirements

- Chef 12.

### Installation

Add this as a dependency in your cookbook's `metadata.rb` with

```ruby
depends 'makenew-chef_cookbook'
```

Alternatively, add this to your [Berksfile][Berkshelf] with

```ruby
cookbook 'makenew-chef_cookbook'
```

and update your cookbooks with

```
$ berks
```

[Berkshelf]: http://berkshelf.com/

## Platform Support

* ubuntu (~> 14.04)

## Recipes

* makenew-chef_cookbook::default - Default recipe.

## Development and Testing

### Requirements

You will need [Ruby] with [Bundler].

[VirtualBox] and [Vagrant] are required
for integration testing with [Test Kitchen].

The following Vagrant plugins are recommended:
`vagrant-berkshelf`, `vagrant-cachier`, `vagrant-ohai` and `vagrant-omnibus`.

Install the development dependencies with

```
$ bundle
```

[Bundler]: http://bundler.io/
[Ruby]: https://www.ruby-lang.org/
[Test Kitchen]: http://kitchen.ci/
[Vagrant]: https://www.vagrantup.com/
[VirtualBox]: https://www.virtualbox.org/

### Source Code

The [makenew-chef_cookbook source] is hosted on GitHub.
Clone the project with

```
$ git clone https://github.com/makenew/chef-cookbook.git
```

[makenew-chef_cookbook source]: https://github.com/makenew/chef-cookbook

### Rake

Run `rake -T` to see all Rake tasks.

```
rake all                          # Run all tasks
rake doc                          # Build documentation
rake foodcritic                   # Lint Chef cookbooks
rake kitchen:all                  # Run all test instances
rake kitchen:default-ubuntu-1404  # Run default-ubuntu-1404 test instance
rake publish                      # Publish this cookbook
rake readme                       # Generate README.md from _README.md.erb
rake rubocop                      # Run RuboCop
rake rubocop:auto_correct         # Auto-correct RuboCop offenses
rake spec                         # Run RSpec code examples
rake test                         # Run kitchen integration tests
rake yard                         # Generate YARD Documentation
```

### Thor

Run `thor -T` to see all Thor tasks.

### Guard

Guard tasks have been separated into the following groups:
`doc`, `lint`, `unit`, and `integration`.

By default, Guard will generate documentation, lint, and run unit tests.
The integration group must be selected manually with `guard -g integration`.

## Contributing

Please submit and comment on bug reports and feature requests.

To submit a patch:

1. Fork it (https://github.com/makenew/chef-cookbook/fork).
2. Create your feature branch (`git checkout -b my-new-feature`).
3. Make changes. Write and run tests.
4. Commit your changes (`git commit -am 'Add some feature'`).
5. Push to the branch (`git push origin my-new-feature`).
6. Create a new Pull Request.

This software can be used freely, see [The Unlicense].
The copyright text appearing below and elsewhere in this repository
is for demonstration purposes only and does not apply to this software.

## License

Copyright 2016 Evan Sosenko

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

https://www.apache.org/licenses/LICENSE-2.0

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
