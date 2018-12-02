class CreateAssessments < ActiveRecord::Migration[5.1]
  def change
    create_table :assessments do |t|
      t.string :grade
      t.integer :faculty_id
      t.integer :program_id

      t.timestamps
    end
  end
end
