class Student < ApplicationRecord
    has_and_belongs_to_many :sections, :through => :sections_students

    validates :name, presence: true
    validates :number, presence: true


    def self.search(search)
        key = "%#{search}%"
        if search
          
          @students = Student.where('name LIKE :search OR number LIKE :search', search: key).order(:name)
        else
          self.all
        end
      end
    end
    

Student.create(name: "Summer Alexan", number: 900348).valid? # => true
Student.create(name: nil, number: nil).valid? # => false

