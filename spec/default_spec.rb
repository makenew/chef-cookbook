require 'spec_helper'

describe 'makenew-chef_cookbook::default' do
  let(:chef_run) { ChefSpec::ServerRunner.new.converge(described_recipe) }

  it 'does nothing' do
  end
end
