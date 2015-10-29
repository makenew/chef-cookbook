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

```
$ git ls-files -z | xargs -0 sed -i 's/replace_cookbook/your_cookbook/g'
$ git ls-files -z | xargs -0 sed -i 's/replace_yyyy/yyyy/g'
$ git ls-files -z | xargs -0 sed -i 's/replace_name_of_copyright_owner/name_of_copyright_owner/g'
$ git ls-files -z | xargs -0 sed -i 's/replace_username/your_username/g'
$ git ls-files -z | xargs -0 sed -i 's/replace_repo/your_repo/g'
```

   To see a list of what else still needs to be replaced, run

```
$ grep -R replace_
```

Note that `CHANGELOG.md` is just a template for this skeleton.
The actual changes for this project are documented in the commit history
and summarized under [Releases].

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

## Source Code

The [chef-cookbook source](https://github.com/makenew/chef-cookbook)
is hosted on GitHub.
To clone the project run

```
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
