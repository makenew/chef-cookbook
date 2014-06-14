require 'chefspec'
require 'chefspec/berkshelf'
require 'chefspec/server'

RSpec.configure do |c|
  c.expect_with(:rspec) { |e| e.syntax = :expect }
end
