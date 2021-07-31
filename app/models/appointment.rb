class Appointment < ApplicationRecord
    belongs_to :veterinarian, optional: true
    belongs_to :dog
    validates :symptoms, presence: true
    validates :agenda, presence: true
    validates :date, presence: true, uniqueness: true
    validates :dog_id, presence: true
    
    #OPTIMIZE: create scope method per logged in user  
   

end