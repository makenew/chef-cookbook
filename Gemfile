source 'https://rubygems.org'

gem 'chef', '~> 12.4.1'
gem 'berkshelf', '~> 3.3.0'

group :development do
  gem 'knife-cookbook-doc', '~> 0.16.0'

  gem 'yard', '~> 0.8.7.4'
  gem 'yard-redcarpet-ext', '~> 0.0.3'
  gem 'redcarpet', '~> 3.3.2'
  gem 'github-markup', '~> 1.4.0'

  gem 'rubocop', '~> 0.34.1'
  gem 'foodcritic', '~> 4.0.0'

  gem 'rake', '~> 10.4.2'

  gem 'thor', '~> 0.19.1'

  gem 'guard', '~> 2.13.0'
  gem 'guard-shell', '~> 0.7.1'
  gem 'guard-yard', '~> 2.1.0'
  gem 'guard-rubocop', '~> 1.2.0'
  gem 'guard-foodcritic', '~> 1.1.1'
end

group :unit do
  gem 'rspec', '~> 3.3.0'
  gem 'chefspec', '~> 4.3.0'
  gem 'simplecov', '~> 0.10.0'
  gem 'codecov', '~> 0.1.1'
  gem 'guard-rspec', '~> 4.6.0'
end

group :integration do
  gem 'test-kitchen', '~> 1.4.0'
  gem 'kitchen-sync', '~> 1.1.1'
  gem 'kitchen-vagrant', '~> 0.18.0'
  gem 'guard-kitchen', '~> 0.0.2'
end

gem 'fuubar', '~> 2.0.0', group: [:development, :unit]
