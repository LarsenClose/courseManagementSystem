class Course < ApplicationRecord
  belongs_to :department
  has_many :sections
  validates :department_id, presence: true
  validates :number, presence: true
  validates :hours, presence: true

  def self.search(search)
    if search
      self.where("  LIKE ?", "%#{params[:search]}%" )
    else
      self.all
    end
  end
end

