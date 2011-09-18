require 'spec_helper'

describe "comic_books/show.html.erb" do
  
  factory_book
  
  describe "when contributors is empty" do
    it "should not display the Contributors" do
      rendered.should_not have_selector("td", :class => "contributor")
    end
  end
  
  describe "when contributors is set" do
    it "should display the contributors" do
      rendered.should have_selector("td", :class => "contributor")
    end
  end
end
