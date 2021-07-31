class Veterinarian < ApplicationRecord
    has_many :appointments
    has_many :dogs, through: :appointments
    has_many :users, through: :dogs

    def full_name
        "#{self.name}".split(" ").map{|word| word.capitalize}.join(" ")

    end
end
    