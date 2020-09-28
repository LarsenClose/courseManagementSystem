class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :name
      t.integer :number
      t.references :sections, index: true, foreign_key: true

      t.timestamps
    end
  end
end
