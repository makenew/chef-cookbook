require 'spec_helper'

describe "replace_cookbook::default" do
  describe command('ls -al /') do
    its(:stdout) { should match(/bin/) }
  end
end
