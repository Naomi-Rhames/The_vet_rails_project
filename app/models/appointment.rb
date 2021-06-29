class Appointment < ActiveRecord::Base
    has_many :doctors
    has_many :patients
end