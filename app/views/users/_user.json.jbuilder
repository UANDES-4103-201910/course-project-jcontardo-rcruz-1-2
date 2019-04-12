json.extract! user, :id, :name, :password, :email, :phone_number, :address, :User_type, :location, :created_at, :updated_at
json.url user_url(user, format: :json)
