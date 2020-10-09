class Semester < ApplicationRecord
    has_many :sections

    validates :semester, presence: true

    def self.search(search)
        if search
            self.where("  LIKE ?", "%#{params[:search]}%" )
        else
            self.all
        end
    end
end
