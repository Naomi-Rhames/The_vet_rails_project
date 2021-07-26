class User < ApplicationRecord
    validates :email, presence: true, uniqueness: true
    has_many :dogs, through: :appointments
    has_many :dogs 
    has_secure_password

    def self.find_or_create_from_google(user_info)
        find_or_create_by(email: user_info[:email]) do |user|
        user.password = SecureRandom.hex
        end
    end
end