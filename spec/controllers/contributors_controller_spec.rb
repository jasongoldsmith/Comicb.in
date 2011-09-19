require 'spec_helper'

describe ContributorsController do

  describe "GET 'show'" do
    it "should be successful" do
      get 'show'
      response.should be_success
    end
  end

  describe "GET 'new'" do
    it "should be successful" do
      get 'new'
      response.should be_success
    end
  end

  describe "POST 'create'" do
    it "should be successful" do
      get 'create'
      response.should be_success
    end
  end

  describe "PUT 'update'" do
    it "should be successful" do
      get 'update'
      response.should be_success
    end
  end

  describe "DELETE 'destroy'" do
    it "should be successful" do
      get 'destroy'
      response.should be_success
    end
  end

end