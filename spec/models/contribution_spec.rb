require 'spec_helper'

describe Contribution do

  before(:each) do
    @attr = { :contributor_id => 5, :comic_book_id => 23, :role_id => 4 }
  end  

  it "can be created" do
   lambda do
      contribution = Contribution.new(@attr)
      contribution.save
    end.should change(Contribution, :count).by(1)
  end 


  it "should have a contributor_id" do
    contribution = Contribution.new(@attr.merge(:contributor_id => nil))
    contribution.should_not be_valid
  end

  it "should have an comic_book_id" do
    contribution = Contribution.new(@attr.merge(:comic_book_id => nil))
    contribution.should_not be_valid
  end
  
  it "should have an role_book_id" do
    contribution = Contribution.new(@attr.merge(:role_id => nil))
    contribution.should_not be_valid
  end
end
