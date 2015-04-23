json.array!(@extensions) do |extension|
  json.extract! extension, :id, :ext
  json.url extension_url(extension, format: :json)
end
