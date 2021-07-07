class Dog < ActiveRecord::Base
    belongs_to :veterinarian, optional: true

end