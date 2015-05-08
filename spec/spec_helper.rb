require 'chefspec'
require 'chefspec/berkshelf'
require 'simplecov'
require 'codecov'

SimpleCov.start

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
  SimpleCov::Formatter::HTMLFormatter,
  SimpleCov::Formatter::Codecov
]

RSpec.configure do |c|
  c.expect_with(:rspec) { |e| e.syntax = :expect }
end

at_exit { ChefSpec::Coverage.report! }
