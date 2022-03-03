class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.integer :name
      t.string :empl_no
      t.string :email
      t.string :department

      t.timestamps
    end
  end
end
