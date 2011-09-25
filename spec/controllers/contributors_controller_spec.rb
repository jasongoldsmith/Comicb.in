require 'spec_helper'

describe ContributorsController do

  describe "GET 'show'" do
    
    factory_contributor
     
    it "should be successful" do
      get :show, :id => @contributor
      response.should be_success
    end
    
    it "should find the right contributor" do
      get :show, :id => @contributor
      assigns(:contributor).should == @contributor 
    end
    
  end

  describe "GET 'new'" do
    it "should be successful" do
      get :new
      response.should be_success
    end
  end

  describe "POST 'create'" do
    describe "failure" do

        before(:each) do
        @attr = { :first_name => "" }
      end

      it "should not create a contributor" do
        lambda do
          post :create, :contributor => @attr
        end.should_not change(Contributor, :count)
      end
      
      it "should render the 'new' page" do
        post :create, :contributor => @attr
        response.should render_template('new')
      end
    end
    describe "success" do

      before(:each) do
        @attr = { :first_name => "John Smith" }
      end

      it "should create a contributor" do
        lambda do
          post :create, :contributor => @attr
        end.should change(Contributor, :count).by(1)
      end

      it "should redirect to the contributor show page" do
        post :create, :contributor => @attr
        response.should redirect_to(contributor_path(assigns(:contributor)))
      end 

      it "should have a success message" do
        post :create, :contributor => @attr
        flash[:success].should =~ /created successfully/i
      end   
    end
  end

  describe "PUT 'update'" do
    before(:each) do
      @contributor = Factory(:contributor)
    end

    describe "failure" do

      before(:each) do
        @attr = { :first_name => "" }
      end

      it "should display the 'edit' page" do
        put :update, :id => @contributor, :contributor => @attr
        response.should render_template('edit')
      end
    end

    describe "success" do

      before(:each) do
        @attr = { :first_name => "John Smith" }
      end

      it "should change the contributor's attributes" do
        put :update, :id => @contributor, :contributor => @attr
        @contributor.reload
        @contributor.first_name.should  == @attr[:first_name]
      end

      it "should redirect to the contributor show page" do
        put :update, :id => @contributor
        response.should redirect_to(contributor_path(@contributor))
      end

      it "should have a flash message" do
        put :update, :id => @contributor, :contributor => @attr
        flash[:success].should =~ /updated/
      end
    end
  end

  describe "DELETE 'destroy'" do
    factory_contributor

    it "should destroy the contributor" do
      lambda do
        delete :destroy, :id => @contributor
      end.should change(Contributor, :count).by(-1)
    end

    it "should redirect to the contributors page" do
      delete :destroy, :id => @contributor
      response.should redirect_to(contributors_path)
    end
  end


end
