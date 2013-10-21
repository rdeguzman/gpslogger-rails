json.array!(@locations) do |location|
  json.extract! location, :latitude, :longitude, :speed, :heading
  json.url location_url(location, format: :json)
end
