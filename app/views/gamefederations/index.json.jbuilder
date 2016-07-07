json.array!(@gamefederations) do |gamefederation|
  json.extract! gamefederation, :id, :game_id, :federation_id
  json.url gamefederation_url(gamefederation, format: :json)
end
