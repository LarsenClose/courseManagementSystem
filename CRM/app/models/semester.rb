class Semester < ApplicationRecord
    has_many :sections

    validates :semester, presence: true

    def self.search(search)
        if search
            key = "%#{search}%"
            @semesters = Semester.where('semester LIKE :search', search: key).order(:name)
        else
            self.all
        end
    end
end
