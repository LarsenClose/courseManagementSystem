class Section < ApplicationRecord
  belongs_to :course
  belongs_to :semester
  belongs_to :professor
  has_many   :SectionsStudents
  has_many   :students, :through => :SectionsStudents
end
