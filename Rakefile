require 'chef'
require 'foodcritic'
require 'rspec/core/rake_task'
require 'rubocop/rake_task'
require 'stove/rake_task'
require 'yard'

task default: [:doc, :rubocop, :foodcritic, :spec]

desc 'Run all tasks'
task all: [:doc, :rubocop, :foodcritic, :spec, 'kitchen:all']

desc 'Run kitchen integration tests'
task test: ['kitchen:all']

desc 'Build documentation'
task doc: [:readme, :yard]

desc 'Generate README.md from _README.md.erb'
task :readme do
  sh(*%w(bundle exec knife cookbook doc -t _README.md.erb .))
end

YARD::Config.load_plugin 'redcarpet-ext'
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

begin
  require 'kitchen/rake_tasks'
  Kitchen::RakeTasks.new
rescue LoadError
  puts '>>>>> Kitchen gem not loaded, omitting tasks.' unless ENV['CI']
end

Stove::RakeTask.new
