require 'spec_helper'

describe "contributors/index.html.erb" do
  context "with contributors"do
    before(:each) do
      assign(:contributors, [
            stub_model(Contributor, :first_name => "Bob", :last_name => "Jones"),
            stub_model(Contributor, :first_name => "Bob", :last_name => "Jones")
          ])
      render
    end

    it "should have a header" do
      rendered.should have_selector("h1")
    end

    it "should display a table" do
      rendered.should have_selector("table")
    end
    
    it "should display a td" do
      rendered.should have_selector("td")
    end
  end
end