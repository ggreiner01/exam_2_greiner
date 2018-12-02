class CreateAdminstrations < ActiveRecord::Migration[5.1]
  def change
    create_table :adminstrations do |t|
      t.string :name
      t.string :phone_number
      t.string :state
      t.string :zip

      t.timestamps
    end
  end
end
