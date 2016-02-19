require 'serverspec'
set :backend, :exec
set :path, '/sbin:/usr/sbin:$PATH'

describe 'makenew-chef_cookbook::default' do
  describe command('ls -al /') do
    its(:stdout) { should match(/bin/) }
  end
end
