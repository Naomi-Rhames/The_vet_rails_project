class Appointment < ApplicationRecord
    has_many :veterinarians
    has_many :patients
end