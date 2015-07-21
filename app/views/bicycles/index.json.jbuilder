json.array!(@bicycles) do |bicycle|
  json.extract! bicycle, :id, :make, :model
  json.url bicycle_url(bicycle, format: :json)
end
