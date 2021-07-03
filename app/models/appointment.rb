class Appointment < ActiveRecord::Base
    has_many :veterinarians
    has_many :patients
end