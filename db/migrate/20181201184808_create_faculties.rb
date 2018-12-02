class CreateFaculties < ActiveRecord::Migration[5.1]
  def change
    create_table :faculties do |t|
      t.string :fname
      t.string :lname
      t.string :phone_number
      t.string :position
      t.integer :administration_id
      t.integer :committee_id

      t.timestamps
    end
  end
end
