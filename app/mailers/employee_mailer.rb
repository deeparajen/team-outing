class EmployeeMailer < ApplicationMailer
  def with(sub_msg: ,body_msg: ,employee:)
    @employee = employee
    mail(to: @employee.email, subject: 'Team Outing')
  end
end
