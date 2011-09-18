require 'spec_helper'

describe ComicBooksController do
  render_views
  
  describe "GET 'show'" do

    factory_book
     
    it "should be successful" do
      get :show, :id => @comicbook
      response.should be_success
    end
    
    it "should find the right comic book" do
      get :show, :id => @comicbook
      assigns(:comicbook).should == @comicbook 
    end
    
    it "should have the right title" do
      get :show, :id => @comicbook
      response.should have_selector("title", :content => "Comicbin | #{@comicbook.title} #{@comicbook.issue}")
    end
  end

  describe "GET 'new'" do
    it "should be successful" do
      get 'new'
      response.should be_success
    end
  end

  describe "GET 'create'" do
    it "should be successful" do
      get 'create'
      response.should be_success
    end
  end

  describe "GET 'update'" do
    it "should be successful" do
      get 'update'
      response.should be_success
    end
  end

  describe "GET 'destroy'" do
    it "should be successful" do
      get 'destroy'
      response.should be_success
    end
  end

end
