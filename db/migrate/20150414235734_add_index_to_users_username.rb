class AddIndexToUsersUsername < ActiveRecord::Migration
  def change
    #this ensures uniqueness at the database level by indexing the username
    add_index :advisor_users, :username, unique: true
  end
end
