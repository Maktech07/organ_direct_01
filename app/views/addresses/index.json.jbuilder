json.array!(@addresses) do |address|
  json.extract! address, :id, :streetInfo, :additional1, :additional2, :city, :state, :zip
  json.url address_url(address, format: :json)
end
