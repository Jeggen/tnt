json.array!(@visits) do |visit|
  json.extract! visit, :id, :stars, :comment
  json.url visit_url(visit, format: :json)
end
