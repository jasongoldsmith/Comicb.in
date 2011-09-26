require 'spec_helper'

describe "comic_books/new.html.erb" do
  context "with a comic_book"do
    before(:each) do
      errors = Array.new(2, "test")
      assign(:comic_book, [
            stub_model(ComicBook, :title => "", :issue => nil, :errors => errors),
          ])
      render
    end

    it "should have a h1" do
      rendered.should have_selector("h1")
    end
      
    it "should have a form" do
      rendered.should have_selector("form")
    end
    
    it "should have a title input" do
      rendered.should have_selector("input[id='comic_book_title']")
    end
    
    it "should have a issue input" do
      rendered.should have_selector("input[id='comic_book_issue']")
    end
    
    it "should have a year input" do
      rendered.should have_selector("input[id='comic_book_year']")
    end
    
    it "should have a volume input" do
      rendered.should have_selector("input[id='comic_book_volume']")
    end
  end
end
