class ChangeColumnTypeOfSchoolNameAdvisorUsers < ActiveRecord::Migration
  def up
    execute 'ALTER TABLE advisor_users ALTER COLUMN school_name TYPE varchar USING (school_name::varchar)'
  end

  def down
    execute 'ALTER TABLE advisor_users ALTER COLUMN school_name TYPE text USING (school_name::text)'
  end
end
