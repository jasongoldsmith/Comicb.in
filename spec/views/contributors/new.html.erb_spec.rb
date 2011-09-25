require 'spec_helper'

describe "contributors/new.html.erb" do
  context "with a contributor"do
    before(:each) do
      assign(:contributor, [
            stub_model(Contributor, :first_name => "John", :last_name => "Smith"),
          ])
    end
  
    it "should have a form" do
      render
      response.should have_selector("form")
    end
  end
end
