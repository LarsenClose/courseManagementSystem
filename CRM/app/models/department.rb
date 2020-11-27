class Department < ApplicationRecord
    has_many :courses
    validates :name, presence: true

    def self.search(search)
        if search
            key = "%#{search}%"
            @departments = Department.where('name LIKE :search', search: key).order(:name)
        else
            self.all
        end
    end
end

