json.array!(@toilets) do |toilet|
  json.extract! toilet, :id, :name, :price, :cover, :cleanliness
  json.url toilet_url(toilet, format: :json)
end
