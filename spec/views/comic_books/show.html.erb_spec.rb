require 'spec_helper'

describe "comic_books/show.html.erb" do
  
  context "with a comic book"do
    before(:each) do
      assign(:comic_book, stub_model(ComicBook, :title => "Hulk", :issue => 5))
      assign(:contributors, [
            stub_model(Contributor, :first_name => "Bob", :last_name => "Jones"),
            stub_model(Contributor, :first_name => "John", :last_name => "Smith")
          ])
      render
    end
  
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
end
