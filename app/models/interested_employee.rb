class InterestedEmployee < ApplicationRecord
  belongs_to :blind_date
  belongs_to :employee
end
