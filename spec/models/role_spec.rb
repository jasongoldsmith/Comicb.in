require 'spec_helper'

describe Role do
  before(:each) do
    @attr = { :role => "Tracer" }
  end  

  it "can be created" do
   lambda do
      role = Role.new(@attr)
      role.save
    end.should change(Role, :count).by(1)
  end 


  it "should have a role" do
    role = Role.new(@attr.merge(:role => ""))
    role.should_not be_valid
  end

end
