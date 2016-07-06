json.array!(@competitors) do |competitor|
  json.extract! competitor, :id, :name, :sex, :federation_id
  json.url competitor_url(competitor, format: :json)
end
