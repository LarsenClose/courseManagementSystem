class CreateSections < ActiveRecord::Migration[6.0]
  def change
    create_table :sections do |t|
      t.integer :year

      t.timestamps
    end
  end
end
