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
