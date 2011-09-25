class Contribution < ActiveRecord::Base
  belongs_to :comic_book
  belongs_to :contributor
  belongs_to :role
end
