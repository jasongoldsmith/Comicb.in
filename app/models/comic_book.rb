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

class ComicBook < ActiveRecord::Base
  validates :title, :issue, :presence => true

  has_many :contributions
  has_many :contributors, :through => :contributions
  
#  accepts_nested_attributes_for :contributors
#  accepts_nested_attributes_for :contributions
end
