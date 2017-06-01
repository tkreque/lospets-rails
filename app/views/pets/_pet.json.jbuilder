json.extract! pet, :id, :latitude, :longitude, :address, :sex, :photo, :animal_id, :user_id, :created_at, :updated_at, :name
json.url pet_url(pet, format: :json)
