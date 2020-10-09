class Section < ApplicationRecord
  belongs_to :course            
  belongs_to :professor         
  belongs_to :semester         
  has_and_belongs_to_many :students, :through => :sections_students

  validates :course_id, presence: true
  validates :professor_id, presence: true
  validates :year, presence: true
  validates :semester_id, presence: true
  validates :students_id, presence: true

  def self.search(search)
      if search
          self.where("  LIKE ?", "%#{params[:search]}%" )
      else
          self.all
      end
  end

end
