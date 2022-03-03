# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Team.create(name: 'Alpha')
Team.create(name: 'Beta')
Team.create(name: 'Gamma')
Team.create(name: 'Delta')
Team.create(name: 'Epsilon')
Team.create(name: 'Lambda')

Employee.create(empl_no: 123, name: 'anu', email: 'priya@gmail.com', department: 'IT')
Employee.create(empl_no: 121, name: 'sasi', email: 'kala@gmail.com', department: 'IT')
Employee.create(empl_no: 167, name: 'prajna', email: 'kumar@gmail.com', department: 'IT')
Employee.create(empl_no: 150, name: 'rajendran', email: 'gounder@gmail.com', department: 'HR')
Employee.create(empl_no: 780, name: 'varsha', email: 'priya@gmail.com', department: 'IT')
Employee.create(empl_no: 183, name: 'sarvana', email: 'mothees@gmail.com', department: 'IT')
Employee.create(empl_no: 678, name: 'ravi', email: 'kumar@gmail.com', department: 'IT')
Employee.create(empl_no: 390, name: 'bhavya', email: 'satheesh@gmail.com', department: 'HR')
Employee.create(empl_no: 398, name: 'Swetha', email: 'Kumar@gmail.com', department: 'IT')
Employee.create(empl_no: 320, name: 'Swathi', email: 'satheesh@gmail.com', department: 'IT')
Employee.create(empl_no: 310, name: 'Gokul', email: 'kumar@gmail.com', department: 'IT')
Employee.create(empl_no: 311, name: 'nandhini', email: 'velu@gmail.com', department: 'HR')

EmployeesTeam.create(team_id: 1, employee_id: 1)
EmployeesTeam.create(team_id: 1, employee_id: 2)
EmployeesTeam.create(team_id: 1, employee_id: 3)
EmployeesTeam.create(team_id: 1, employee_id: 4)
EmployeesTeam.create(team_id: 2, employee_id: 5)
EmployeesTeam.create(team_id: 2, employee_id: 6)
EmployeesTeam.create(team_id: 2, employee_id: 7)
EmployeesTeam.create(team_id: 2, employee_id: 8)
EmployeesTeam.create(team_id: 3, employee_id: 9)
EmployeesTeam.create(team_id: 3, employee_id: 10)
EmployeesTeam.create(team_id: 3, employee_id: 11)
EmployeesTeam.create(team_id: 3, employee_id: 12)