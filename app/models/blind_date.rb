class BlindDate < ApplicationRecord
  has_many :interested_employees
  has_many :groups

  accepts_nested_attributes_for :interested_employees
end
