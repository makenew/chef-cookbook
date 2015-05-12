# Chef Skeleton Cookbook

[![Apache 2.0 License](https://img.shields.io/github/license/makenew/chef-cookbook.svg)](./LICENSE.txt)
[![Dependency Status](https://img.shields.io/gemnasium/makenew/chef-cookbook.svg)](https://gemnasium.com/makenew/chef-cookbook)
[![Build Status](https://img.shields.io/travis/makenew/chef-cookbook.svg)](https://travis-ci.org/makenew/chef-cookbook)
[![Coverage Status](https://img.shields.io/codecov/c/github/makenew/chef-cookbook.svg)](https://codecov.io/github/makenew/chef-cookbook)

Use this project freely as a base for your testable [Chef] cookbooks.

[Chef]: https://www.chef.io/

## Description

### Features

* Dependency management with [Berkshelf].
* [Rake], [Thor], and [Guard] tasks for included tools.
* Documentation generation with [YARD] and [knife-cookbook-doc].
* Linting with [RuboCop] and [Foodcritic].
* Unit testing with [ChefSpec].
* Integration testing with [Test Kitchen].
* [Travis CI] ready.
* [EditorConfig].
* Badges from [Shields.io]!

[Berkshelf]: http://berkshelf.com/index.html
[ChefSpec]: https://sethvargo.github.io/chefspec/
[EditorConfig]: http://editorconfig.org/
[Foodcritic]: https://acrmp.github.io/foodcritic/
[Guard]: http://guardgem.org/
[knife-cookbook-doc]: https://github.com/realityforge/knife-cookbook-doc
[Rake]: https://github.com/jimweirich/rake
[RuboCop]: http://batsov.com/rubocop/
[Shields.io]: http://shields.io/
[Test Kitchen]: http://kitchen.ci/
[Thor]: http://whatisthor.com/
[Travis CI]: https://travis-ci.org/
[YARD]: http://yardoc.org/index.html

### Usage

This software can be used freely, see [The Unlicense].
The Apache License text appearing in this software is for
demonstration purposes only and does not apply to this software.

1. Clone this repository or download a [release][Releases].
   - The `master` branch can be used for making cookbooks under the Apache 2.0 License.
   - The `copyright` branch can be used for making proprietary cookbooks.

2. Customize `doc/*.md`.
   - Do not edit `README.md` directly,
     it will be generated from `_README.md.erb`
     using data from `metadata.rb`,
     and the `.md` files in `/doc`.
   - Replace things marked with `replace_`.
   - Customize your badges in `doc/badges.md`.
   - Run `rake readme`.

3. Everything else that should be filled in before using this skeleton
   has been marked with the prefix `replace_`.
   You can replace the placeholder cookbook name
   and the copyright text with your own using

```bash
$ git ls-files -z | xargs -0 sed -i 's/replace_cookbook/your_cookbook/g'
$ git ls-files -z | xargs -0 sed -i 's/replace_yyyy/yyyy/g'
$ git ls-files -z | xargs -0 sed -i 's/replace_name_of_copyright_owner/name_of_copyright_owner/g'
```

   To see a list of what else still needs to be replaced, run

```bash
$ grep -R replace_
```

Note that `CHANGELOG.md` is just a template for this skeleton.
The actual changes for this project are documented in the commit history
and summarized under [Releases].

[Releases]: https://github.com/makenew/chef-cookbook/releases
[The Unlicense]: http://unlicense.org/UNLICENSE

#### Add future update support

If you want to merge in future updates from this skeleton and have your own origin,
set up a separate branch to track this.

```bash
$ git remote rename origin upstream
$ git branch chef-cookbook
$ git branch -u upstream/master chef-cookbook
```

Then add an origin and push master

```bash
$ git remote add origin git@github.com:your_username/chef-your_cookbook.git
$ git push -u origin master
```

Now, the `chef-cookbook` branch will pull changes from this project,
which you can then merge into your other branches.

If you later clone your repo you will need to create the update branch again.

```bash
$ git remote add upstream https://github.com/makenew/chef-cookbook.git
$ git fetch upstream
$ git checkout -b chef-cookbook upstream/master
```

## Source Code

The [chef-cookbook source](https://github.com/makenew/chef-cookbook)
is hosted on GitHub.
To clone the project run

```bash
$ git clone https://github.com/makenew/chef-cookbook.git
```

## Contributing

Please submit and comment on bug reports and feature requests.

To submit a patch:

1. Fork it (https://github.com/makenew/chef-cookbook/fork).
2. Create your feature branch (`git checkout -b my-new-feature`).
3. Make changes. Write and run tests.
4. Commit your changes (`git commit -am 'Add some feature'`).
5. Push to the branch (`git push origin my-new-feature`).
6. Create a new Pull Request.

## License

This is free and unencumbered software released into the public domain.

## Warranty

This software is provided "as is" and without any express or
implied warranties, including, without limitation, the implied
warranties of merchantibility and fitness for a particular
purpose.
