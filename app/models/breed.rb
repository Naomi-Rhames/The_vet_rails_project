class Breed < ApplicationRecord
    has_many :dogs

    def self.search(search)
        if search
            @breeds = []
            breed = Breed.all.each { |m| @breeds << b if b.name.downcase.include?(params[:search].downcase) }
            redirect_to search_breed_path
        else
             Breed.all
            redirect_to search_breed_path
            end
            redirect_to search_breed_path
     end



     
end