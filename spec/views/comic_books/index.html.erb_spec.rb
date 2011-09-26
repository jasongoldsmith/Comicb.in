require 'spec_helper'

describe "comic_books/index.html.erb" do
  context "with comic books"do
    before(:each) do
      assign(:comic_books, [
            stub_model(ComicBook, :title => "Hulk", :issue => 5),
            stub_model(ComicBook, :title => "XMen", :issue => 5)
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