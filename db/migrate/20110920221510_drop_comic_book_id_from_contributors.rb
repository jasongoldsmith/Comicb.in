class DropComicBookIdFromContributors < ActiveRecord::Migration
  def self.up
      remove_column :contributors, :comic_book_id
    end

  def self.down
    add_column :contributors, :comic_book_id, :integer
  end
end
