class AddRoleToUsers < ActiveRecord::Migration
  def change
  	add_column :Users, :role, :integer, default: 0

  end
end
