class Pet < ApplicationRecord
    belongs_to :user
    belongs_to :animal
    
    has_many :pet_tag
    has_many :tag , :through  => :pet_tag
    
    validates :name, presence: true, length: { maximum: 50 }
    
    geocoded_by :address                # ActiveRecord
    after_validation :geocode           # auto-fetch coordinates
end
