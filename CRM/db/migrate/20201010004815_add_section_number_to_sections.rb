class AddSectionNumberToSections < ActiveRecord::Migration[6.0]
  def change
    add_column :sections, :section_number, :integer
  end
end
