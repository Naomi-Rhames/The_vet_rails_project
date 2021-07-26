class Veterinarian < ApplicationRecord
    has_many :appointments, through: :dogs
    has_many :dogs
    has_many :users, through: :dogs

    def full_name
        "#{self.name}".split(" ").map{|word| word.capitalize}.join(" ")

    end
end
    