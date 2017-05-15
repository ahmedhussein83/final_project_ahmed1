json.extract! hotel, :id, :name, :address, :phone_number, :email, :description, :special_offers, :latitude, :longitude, :created_at, :updated_at
json.url hotel_url(hotel, format: :json)