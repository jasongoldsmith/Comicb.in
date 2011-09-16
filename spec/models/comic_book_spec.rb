# == Schema Information
#
# Table name: comic_books
#
#  id           :integer         not null, primary key
#  title        :string(255)
#  issue        :integer
#  volume       :integer
#  year         :integer
#  scripter_id  :integer
#  penciller_id :integer
#  inker_id     :integer
#  colorist_id  :integer
#  letterer_id  :integer
#  created_at   :datetime
#  updated_at   :datetime
#

require 'spec_helper'

describe ComicBook do
 
  before(:each) do
    @attr = { :title => "X-Men", :issue => 23 }
  end  

  it "can be created" do
   lambda do
      comicbook = ComicBook.new(@attr)
      comicbook.save
    end.should change(ComicBook, :count).by(1)
  end 

  
  it "should have a title" do
    comicbook = ComicBook.new(@attr.merge(:title => ""))
    comicbook.should_not be_valid
  end
  
  it "should an issue number" do
    comicbook = ComicBook.new(@attr.merge(:issue => nil))
    comicbook.should_not be_valid
  end
end
