require 'spec_helper'

describe 'replace_cookbook_name::default' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it "replace_does_something" do
    expect(chef_run).to write_log 'replace_this'
  end
end
