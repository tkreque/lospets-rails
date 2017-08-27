class PetTag < ApplicationRecord
    belongs_to :pet
    belongs_to :tag
    self.primary_key = "id"
end
