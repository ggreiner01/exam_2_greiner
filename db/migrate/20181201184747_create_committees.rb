class CreateCommittees < ActiveRecord::Migration[5.1]
  def change
    create_table :committees do |t|
      t.integer :administration_id
      t.string :name
      t.integer :num_of_faculty

      t.timestamps
    end
  end
end
