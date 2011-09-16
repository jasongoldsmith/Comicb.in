class CreateComicBooks < ActiveRecord::Migration
  def self.up
    create_table :comic_books do |t|
      t.string :title
      t.integer :issue
      t.integer :volume
      t.integer :year
      t.integer :scripter_id
      t.integer :penciller_id
      t.integer :inker_id
      t.integer :colorist_id
      t.integer :letterer_id

      t.timestamps
    end
  end

  def self.down
    drop_table :comic_books
  end
end
