class CreateGroupDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :group_details do |t|
      t.references :group
      t.references :employee
      t.boolean :is_leader

      t.timestamps
    end
  end
end
