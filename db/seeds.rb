require 'csv'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


CSV.foreach("#{Rails.root}/db/csv/teams.csv", :quote_char => '"', :col_sep =>',', :row_sep =>:auto, :headers => true) do |row|
  Team.create(name: row[0])
end

CSV.foreach("#{Rails.root}/db/csv/employees.csv", :quote_char => '"', :col_sep =>',', :row_sep =>:auto, :headers => true) do |row|
  Employee.create(empl_no: row[0], name: row[1], email: row[2], department: row[3])
end

CSV.foreach("#{Rails.root}/db/csv/employees_teams.csv", :quote_char => '"', :col_sep =>',', :row_sep =>:auto, :headers => true) do |row|
  EmployeesTeam.create(team_id: row[0], employee_id: row[1])
end
