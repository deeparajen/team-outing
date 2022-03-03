class CreateInterestedEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :interested_employees do |t|
      t.references :blind_dates
      t.references :employees

      t.timestamps
    end
  end
end
