class Tag < ApplicationRecord
    has_many :pet_tag
    has_many :pet , :through => :pet_tag
end


      
       