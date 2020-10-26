class RemoveStudentIdFromSection < ActiveRecord::Migration[6.0]
  def change
    remove_column :sections, :student_id, :integer
  end
end
