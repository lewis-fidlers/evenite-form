json.array!(@users) do |user|
  json.extract! user, :id, :name, :address, :city, :postal_code, :phone, :type, :email, :vat, :pa_system, :garden, :wifi, :extra_info, :own_drinks, :own_drinks_mandatory, :parking, :person_capacity, :parking_spaces, :venue_type, :genre, :years_experience, :references, :artist_type
  json.url user_url(user, format: :json)
end
