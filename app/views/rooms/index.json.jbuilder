json.array!(@rooms) do |room|
  json.extract! room, :id, :room
  json.url room_url(room, format: :json)
end
