class RemoveRoleFromContributors < ActiveRecord::Migration
  def self.up
    remove_column :contributors, :role
  end

  def self.down
    add_column :contributors, :role, :string
  end
end
