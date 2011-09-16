class CreateContributors < ActiveRecord::Migration
  def self.up
    create_table :contributors do |t|
      t.string :first_name
      t.string :last_name
      t.string :role

      t.timestamps
    end
  end

  def self.down
    drop_table :contributors
  end
end
