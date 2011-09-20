class Role < ActiveRecord::Base
  has_many :contributions
  has_many :contributors, :through => :contributions
  has_many :comic_books, :through => :contributions
end
