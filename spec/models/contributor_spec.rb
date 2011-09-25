# == Schema Information
#
# Table name: contributors
#
#  id         :integer         not null, primary key
#  first_name :string(255)
#  last_name  :string(255)
#  role       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe Contributor do
  before(:each) do
    @attr = { :first_name => "John", :last_name => "Smith" }
  end  

  it "can be created" do
   lambda do
      contributor = Contributor.new(@attr)
      contributor.save
    end.should change(Contributor, :count).by(1)
  end 

  
  it "should have a first_name" do
    contributor = Contributor.new(@attr.merge(:first_name => ""))
    contributor.should_not be_valid
  end
  
end
