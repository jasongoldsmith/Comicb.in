class CreateContributions < ActiveRecord::Migration
  def self.up
    create_table :contributions do |t|
      t.integer :comic_book_id
      t.integer :contributor_id
      t.integer :role_id

      t.timestamps
    end
  end

  def self.down
    drop_table :contributions
  end
end
