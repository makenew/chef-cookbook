require 'spec_helper'

describe 'replace_cookbook::default' do

  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it "replace_logs_something" do
    expect(chef_run).to write_log 'replace_this'
  end
end
