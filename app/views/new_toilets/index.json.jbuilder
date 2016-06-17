json.array!(@new_toilets) do |new_toilet|
  json.extract! new_toilet, :id, :name, :price, :cleanliness, :string
  json.url new_toilet_url(new_toilet, format: :json)
end
