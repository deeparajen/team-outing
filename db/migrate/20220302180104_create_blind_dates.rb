class CreateBlindDates < ActiveRecord::Migration[6.1]
  def change
    create_table :blind_dates do |t|
      t.datetime :outing_date
      t.string :description

      t.timestamps
    end
  end
end
