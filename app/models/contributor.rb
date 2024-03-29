# == Schema Information
#
# Table name: contributors
#
#  id         :integer         not null, primary key
#  first_name :string(255)
#  last_name  :string(255)
#  role       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Contributor < ActiveRecord::Base
  validates :first_name, :presence => true
  
  has_many :contributions
  has_many :roles, :through => :contributions
  has_many :comic_books, :through => :contributions
  
#  accepts_nested_attributes_for :contributions
#  accepts_nested_attributes_for :roles
end
