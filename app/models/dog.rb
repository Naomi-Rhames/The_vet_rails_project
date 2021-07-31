class Dog < ApplicationRecord
    belongs_to :user
    # belongs_to :breed, optional: true
    has_many :appointments
    has_many :veterinarians, through: :appointments 
    validates :name, presence: true
    validates :dog_breed, presence: true
    validates :age, presence: true
    validates :symptoms, presence: true
    validates :description, presence: true
    validates :temperament, presence: true
    validates :origin, presence: true
    validates :owners_name, presence: true
    validates :phone_number, presence: true
end   