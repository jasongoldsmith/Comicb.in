class AddComicBookIdToContributors < ActiveRecord::Migration
  def self.up
    add_column :contributors, :comic_book_id, :integer
  end

  def self.down
    remove_column :contributors, :comic_book_id
  end
end
