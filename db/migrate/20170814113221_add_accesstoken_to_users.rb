class AddAccesstokenToUsers < ActiveRecord::Migration
  def change
  	  	add_column :Users, :accesstoken, :string

  end
end
