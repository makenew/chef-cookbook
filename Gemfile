source 'https://rubygems.org'

gem 'chef', '~> 11.12.8'
gem 'berkshelf', '~> 3.1.2'

group :development do
  gem 'knife-cookbook-doc', '~> 0.11.0'

  gem 'yard', '~> 0.8.7.4'
  gem 'yard-redcarpet-ext', '~> 0.0.3'
  gem 'redcarpet', '~> 3.1.2'
  gem 'github-markup', '1.2.1'

  gem 'rubocop', '~> 0.24.0'
  gem 'foodcritic', '~> 4.0.0'

  gem 'rake', '~> 10.3.2'

  gem 'thor', '~> 0.19.1'

  gem 'guard', '~> 2.6.1'
  gem 'guard-shell', '~> 0.6.1'
  gem 'guard-yard', '~> 2.1.0'
  gem 'guard-rubocop', '~> 1.1.0'
  gem 'guard-foodcritic', '~> 1.0.2'
end

group :unit do
  gem 'rspec', '~> 3.0.0'
  gem 'chefspec', '~> 4.0.0'
  gem 'simplecov', '~> 0.9.0'
  gem 'coveralls', '~> 0.7.0'
  gem 'guard-rspec', '~> 4.2.9'
end

group :integration do
  gem 'test-kitchen', '1.2.1'
  gem 'kitchen-vagrant', '~> 0.15.0'
  gem 'guard-kitchen', '~> 0.0.2'
end

gem 'fuubar', '~> 2.0.0.rc1', group: [:development, :unit]
