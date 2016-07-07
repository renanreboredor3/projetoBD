json.array!(@results) do |result|
  json.extract! result, :id, :event_id, :competitor_id, :time, :distance, :height
  json.url result_url(result, format: :json)
end
