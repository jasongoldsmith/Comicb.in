require 'spec_helper'

describe ComicBooksController do
  render_views
  
  describe "GET 'show'" do

    factory_book
     
    it "should be successful" do
      get :show, :id => @comic_book
      response.should be_success
    end
    
    it "should find the right comic book" do
      get :show, :id => @comic_book
      assigns(:comic_book).should == @comic_book 
    end
    
  end

  describe "GET 'new'" do
    it "should be successful" do
      get :new
      response.should be_success
    end
    
    it "should have the right title" do
      get :new
      response.should have_selector("title", :content => "Comicbin | Add a Comic Book")
    end
  end

  describe "POST 'create'" do
    describe "failure" do

        before(:each) do
        @attr = { :title => "", :issue => nil }
      end

      it "should not create a comic book" do
        lambda do
          post :create, :comic_book => @attr
        end.should_not change(ComicBook, :count)
      end
=begin
      it "should have the right title" do
        post :create, :user => @attr
        response.should have_selector("title", :content => "Sign up")
      end
=end
      it "should render the 'new' page" do
        post :create, :comic_book => @attr
        response.should render_template('new')
      end
    end
    describe "success" do

      before(:each) do
        @attr = { :title => "Green Lantern", :issue => 5 }
      end

      it "should create a comic book" do
        lambda do
          post :create, :comic_book => @attr
        end.should change(ComicBook, :count).by(1)
      end

      it "should redirect to the comic book show page" do
        post :create, :comic_book => @attr
        response.should redirect_to(comic_book_path(assigns(:comic_book)))
      end 

      it "should have a success message" do
        post :create, :comic_book => @attr
        flash[:success].should =~ /created successfully/i
      end   
    end
  end

  describe "PUT 'update'" do
    before(:each) do
      @comic_book = Factory(:comic_book)
    end

    describe "failure" do

      before(:each) do
        @attr = { :title => "", :issue => nil }
      end

      it "should display the 'edit' page" do
        put :update, :id => @comic_book, :comic_book => @attr
        response.should render_template('edit')
      end
    end

    describe "success" do

      before(:each) do
        @attr = { :title => "Avengers", :issue => 294 }
      end

      it "should change the comic book's attributes" do
        put :update, :id => @comic_book, :comic_book => @attr
        @comic_book.reload
        @comic_book.title.should  == @attr[:title]
        @comic_book.issue.should == @attr[:issue]
      end

      it "should redirect to the comic_book show page" do
        put :update, :id => @comic_book, :user => @attr
        response.should redirect_to(comic_book_path(@comic_book))
      end

      it "should have a flash message" do
        put :update, :id => @comic_book, :comic_book => @attr
        flash[:success].should =~ /updated/
      end
    end
  end

  describe "DELETE 'destroy'" do
    factory_book
    
    it "should destroy the comic book" do
      lambda do
        delete :destroy, :id => @comic_book
      end.should change(ComicBook, :count).by(-1)
    end

    it "should redirect to the comic books page" do
      delete :destroy, :id => @comic_book
      response.should redirect_to(comic_books_path)
    end
  end

end
