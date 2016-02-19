require '../serverspec_helper'

describe 'makenew-chef_cookbook::default' do
  describe command('ls -al /') do
    its(:stdout) { should match(/bin/) }
  end
end
