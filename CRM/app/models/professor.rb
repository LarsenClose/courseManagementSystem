class Professor < ApplicationRecord
    has_many :sections
    validates :name, presence: true


    def self.search(search)
        if search
            key = "%#{search}%"
            @professors = Professor.where('name LIKE :search OR office LIKE :search' , search: key).order(:name)
        else
            self.all
        end
    end
end

Professor.create(name: "Roger Penrose").valid? # => true
Professor.create(name: nil).valid? # => false