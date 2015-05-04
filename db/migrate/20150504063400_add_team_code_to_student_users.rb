class AddTeamCodeToStudentUsers < ActiveRecord::Migration
  def change
    add_column :student_users, :team_code, :string
  end
end
