class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string   :team_name
      t.string   :team_code
      t.integer  :user_id
    end
    add_foreign_key :teams, :advisor_users
  end
end
