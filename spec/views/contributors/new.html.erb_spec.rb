require 'spec_helper'

describe "contributors/new.html.erb" do
  context "with a contributor"do
    before(:each) do
      assign(:contributor, [
            stub_model(Contributor, :first_name => "John", :last_name => "Smith"),
          ])
      render
    end
  
    it "should have a header" do
      rendered.should have_selector("h1")
    end

    it "should have a form" do
      rendered.should have_selector("form")
    end
    
    it "should have a first name input" do
      rendered.should have_selector("input[id='contributor_first_name']")
    end
    
    it "should have a last name input" do
      rendered.should have_selector("input[id='contributor_last_name']")
    end
  end
end
