class AddRoleToUsers < ActiveRecord::Migration
  def change
  	add_column :Users, :role, :integer

  end
end
