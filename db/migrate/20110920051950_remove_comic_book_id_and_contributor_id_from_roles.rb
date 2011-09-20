class RemoveComicBookIdAndContributorIdFromRoles < ActiveRecord::Migration
  def self.up
    remove_column :roles, :contributor_id
    remove_column :roles, :comic_book_id
  end

  def self.down
    add_column :roles, :contributor_id, :integer
    add_column :roles, :comic_book_id, :integer
  end
end
