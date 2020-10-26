class RemoveSectionIdFromStudent < ActiveRecord::Migration[6.0]
  def change
    remove_column :students, :section_id, :integer
  end
end
