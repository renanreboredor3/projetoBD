json.array!(@games) do |game|
  json.extract! game, :id, :name, :city, :country
  json.url game_url(game, format: :json)
end
