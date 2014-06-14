require 'chef'
require 'foodcritic'
require 'rspec/core/rake_task'
require 'rubocop/rake_task'
require 'yard'

task default: [:yard, :rubocop, :foodcritic, :spec]

YARD::Config.load_plugin 'chef'
YARD::Rake::YardocTask.new do |t|
  t.files = ['**/*.rb', '-', 'README.md', 'CHANGELOG.md', 'LICENSE.txt']
  t.options = ['--markup-provider=redcarpet', '--markup=markdown']
end

RuboCop::RakeTask.new do |t|
  t.formatters = ['progress']
end

FoodCritic::Rake::LintTask.new do |t|
  t.options = { fail_tags: ['all'] }
end

RSpec::Core::RakeTask.new
