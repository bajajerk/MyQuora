class AddprofilepicToUsers < ActiveRecord::Migration
  def change
  	  	add_column :Users, :profile_picture, :string

  end
end
