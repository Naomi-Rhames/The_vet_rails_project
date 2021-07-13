class Appointment < ApplicationRecord
    has_many :veterinarians
    has_many :dogs
    belongs_to :user
end