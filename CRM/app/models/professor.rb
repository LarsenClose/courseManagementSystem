class Professor < ApplicationRecord
    has_many :sections
    validates :name, presence: true
    validates :office, presence: true

    def self.search(search)
        if search
            self.where("  LIKE ?", "%#{params[:search]}%" )
        else
            self.all
        end
    end
end
