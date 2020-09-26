class CreateSections < ActiveRecord::Migration[6.0]
  def change
    create_table :sections do |t|
      t.string :course_id
      t.integer :professor_id
      t.integer :year
      t.integer :semester_id

      t.timestamps
    end
  end
end
