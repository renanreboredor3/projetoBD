json.array!(@competitorgames) do |competitorgame|
  json.extract! competitorgame, :id, :game_id, :competitor_id
  json.url competitorgame_url(competitorgame, format: :json)
end
