class Student < ApplicationRecord
  has_many :SectionsStudents
  has_many :sections, :through => :SectionsStudents
end
