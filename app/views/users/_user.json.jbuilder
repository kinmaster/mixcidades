json.extract! user, :id, :name, :function, :city, :created_at, :updated_at
json.url user_url(user, format: :json)
