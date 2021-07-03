class Dog < ActiveRecord::Base
    belongs_to :doctor

    # def fetch_pets
    #     request_url = "https://api.thedogapi.com/v1/breeds"
    #     response = `curl #{request_url}`
    #     json = JSON.parse(response)
    # end
end