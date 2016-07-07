json.array!(@competitorevents) do |competitorevent|
  json.extract! competitorevent, :id, :event_id, :competitor_id
  json.url competitorevent_url(competitorevent, format: :json)
end
