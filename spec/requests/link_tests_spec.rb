require 'spec_helper'

describe "LinkTests" do
  describe "GET /" do
    it "should respond with OK" do
      get '/'
      response.status.should be(200)
    end
  end

  describe "GET comic_books" do
    it "should respond with OK" do
      get 'comic_books'
      response.status.should be(200)
    end
  end
  
  describe "GET contributors" do
    it "should respond with OK" do
      get 'contributors'
      response.status.should be(200)
    end
  end

end


