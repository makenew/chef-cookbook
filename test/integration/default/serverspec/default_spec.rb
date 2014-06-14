require 'spec_helper'

describe "replace_cookbook::default" do

  it "replace_has_a_tmp_directory" do
    expect(command 'ls /tmp').to return_exit_status(0)
  end
end
