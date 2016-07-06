json.array!(@federations) do |federation|
  json.extract! federation, :id, :name
  json.url federation_url(federation, format: :json)
end
