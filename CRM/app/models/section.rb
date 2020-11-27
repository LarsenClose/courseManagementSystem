class Section < ApplicationRecord
  belongs_to :course            
  belongs_to :professor         
  belongs_to :semester         
  has_and_belongs_to_many :students, :through => :sections_students

  validates :course_id, presence: true
  validates :professor_id, presence: true
  validates :year, presence: true
  validates :semester_id, presence: true


  def self.search(search)
    if search
        key = "%#{search}%"
        @sections = Section.where('year LIKE :search OR course_id LIKE :search OR section_number LIKE :search', search: key).order(:name)
        else
            self.all
        end
    end
end

