class InterestEmployeeService
  
  def initialize; end

  def call
    return if employees.blank?

    coming_friday = date_of_next("Friday")
    blind_date = BlindDate.find_or_create_by!(outing_date: coming_friday)
    host = "http://localhost:3000"
    url = "#{host}/blind_dates/#{blind_date.id}/interested_employee"
    sub_msg = "Please confirm your presence for lunch on #{l blind_date}"
    employees.each {|employee|
      employee_confirmation_link = "#{url}?employee_id=#{employee}"
      body_msg = "Dear #{employee.name}\n"
      body_msg << "Dataguard planned to go outing for lunch on #{l blind_date}.\n"
      body_msg << "Dataguard is pleased to invite you to this event. Confirm your presence by clicking the link below.\n"
      body_msg << employee_confirmation_link
      EmployeeMailer.with(sub_msg: sub_msg, body_msg: body_msg, employee: employee).outing_confirmation_email.deliver_later
    }
  end

  def employees
    Employee.order(:name)
  end

  def date_of_next(day)
    date  = Date.parse(day)
    delta = date > Date.today ? 0 : 7
    date + delta
  end

end