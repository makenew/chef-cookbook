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
- [Travis CI] and [wercker] ready.
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
[wercker]: http://wercker.com/
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

3. Fill in the README Description section
   and add (or remove) your own wercker badge to `doc/badges.md`
   (you will need to create a new wercker application).

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
   You may also set the Ruby versions to test against
   in `.travis.yml` and `wercker.yml`.
   If using [codecov] and [wercker],
   you must set the `CODECOV_TOKEN` environment variable.

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
