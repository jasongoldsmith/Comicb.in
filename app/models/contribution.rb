class Contribution < ActiveRecord::Base
  validates :contributor_id, :comic_book_id, :role_id, :presence => true
  
  belongs_to :comic_book
  belongs_to :contributor
  belongs_to :role
end
