json.array!(@medics) do |medic|
  json.extract! medic, :id, :name, :federation_id
  json.url medic_url(medic, format: :json)
end
