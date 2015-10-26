class AddUserIdToTeams < ActiveRecord::Migration
  def change
    add_reference :teams, :advisor_users
    add_foreign_key :teams, :advisor_users
  end
end
