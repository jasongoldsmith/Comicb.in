require 'spec_helper'

describe "comic_books/show.html.erb" do
  
  factory_book
#  assigns :comic_book, comic_book
  
  it "should have the right title" do
    #get :show, :id => @comic_book
    response.should have_selector("title", :content => "Comicbin | #{@comic_book.title} #{@comic_book.issue}")
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
