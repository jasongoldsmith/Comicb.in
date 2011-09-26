require 'spec_helper'

describe "comic_books/show.html.erb" do
  
  context "with a comic book"do
    describe "when contributors is empty" do
      it "should not display the Contributors" do
        render
        rendered.should_not have_selector("td", :class => "contributor")
      end
    end

    before(:each) do
      contributors = Array.new(4, stub_model(Contributor, :first_name => "Bob", :last_name => "Jones"))
      assign(:comic_book, stub_model(ComicBook, :title => "Hulk", :issue => 5, :contributors => contributors))
    end
    
    describe "when contributors is set" do
      it "should display the contributors" do
        render
        rendered.should have_selector("td", :class => "contributor")
      end
    end
  end
end
