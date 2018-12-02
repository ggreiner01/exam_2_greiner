class CreatePrograms < ActiveRecord::Migration[5.1]
  def change
    create_table :programs do |t|
      t.string :name
      t.integer :faculty_id
      t.integer :open_space

      t.timestamps
    end
  end
end
