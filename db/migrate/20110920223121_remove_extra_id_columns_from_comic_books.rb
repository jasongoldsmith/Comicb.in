class RemoveExtraIdColumnsFromComicBooks < ActiveRecord::Migration
  def self.up
    remove_column :comic_books, :scripter_id
    remove_column :comic_books, :penciller_id
    remove_column :comic_books, :inker_id
    remove_column :comic_books, :colorist_id
    remove_column :comic_books, :letterer_id
  end

  def self.down
    add_column :comic_books, :letterer_id, :integer
    add_column :comic_books, :colorist_id, :integer
    add_column :comic_books, :inker_id, :integer
    add_column :comic_books, :penciller_id, :integer
    add_column :comic_books, :scripter_id, :integer
  end
end
