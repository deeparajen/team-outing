class CreateEmployeesTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :employees_teams do |t|
      t.references :employee
      t.references :team

      t.timestamps
    end
  end
end
