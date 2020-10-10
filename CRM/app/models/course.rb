class Course < ApplicationRecord
  belongs_to :department
  has_many :sections
  validates :number, presence: true
  validates :hours, presence: true

  def self.search(search)
    if search
      key = "%#{search}%"
      @courses = Course.where('department_id LIKE :search OR number LIKE :search OR hours LIKE :search', search: key).order(:name)
    else
      self.all
    end
  end
end

