json.extract! user, :id, :name, :sex, :identification, :email, :photo, :created_at, :updated_at
json.url user_url(user, format: :json)
