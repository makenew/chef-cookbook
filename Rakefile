require 'chef'
require 'foodcritic'
require 'yard'

FoodCritic::Rake::LintTask.new do |t|
  t.options = {fail_tags: %w(all)}
end

YARD::Config.load_plugin 'chef'
YARD::Rake::YardocTask.new do |t|
  t.files = ['**/*.rb', '-', 'README.md', 'CHANGELOG.md', 'LICENSE.txt']
  t.options = ['--markup-provider=redcarpet', '--markup=markdown']
end
