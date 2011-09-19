class CreateRoles < ActiveRecord::Migration
  def self.up
    create_table :roles do |t|
      t.integer :comic_book_id
      t.integer :contributor_id
      t.string :role

      t.timestamps
    end
    
    add_index :roles, :comic_book_id
    add_index :roles, :contributor_id
  end

  def self.down
    drop_table :roles
  end
end
