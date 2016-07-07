json.array!(@healthcaresupports) do |healthcaresupport|
  json.extract! healthcaresupport, :id, :medic_id, :federation_id
  json.url healthcaresupport_url(healthcaresupport, format: :json)
end
