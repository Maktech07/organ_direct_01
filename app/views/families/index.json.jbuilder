json.array!(@families) do |family|
  json.extract! family, :id, :familyName
  json.url family_url(family, format: :json)
end
