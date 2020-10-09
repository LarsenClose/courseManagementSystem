class Student < ApplicationRecord
    has_and_belongs_to_many :sections, :through => :sections_students

    validates :name, presence: true
    validates :number, presence: true
    validates :sections_id, presence: true

    def self.search(search)
        if search
            self.where("  LIKE ?", "%#{params[:search]}%" )
        else
            self.all
        end
    end
end
