require 'spec_helper'

describe 'replace_cookbook::default' do
  let(:chef_run) { ChefSpec::ServerRunner.new.converge(described_recipe) }

  it 'replace_does_something' do
  end
end
