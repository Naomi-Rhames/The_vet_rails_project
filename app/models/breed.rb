class Breed < ApplicationRecord
    has_many :dogs

     def self.search(params)
        Breed.where("LOWER(name) LIKE  ?", "%#{params}%")
      end 
end 