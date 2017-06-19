json.extract! user, :id, :name, :sex, :cpf, :email, :photo, :created_at, :updated_at
json.url user_url(user, format: :json)
