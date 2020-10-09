class Department < ApplicationRecord
    has_many :courses
    validates :name, presence: true

    def self.search(search)
        if search
            self.where("  LIKE ?", "%#{params[:search]}%" )
        else
            self.all
        end
    end


end
