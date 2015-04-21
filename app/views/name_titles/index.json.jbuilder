json.array!(@name_titles) do |name_title|
  json.extract! name_title, :id, :title
  json.url name_title_url(name_title, format: :json)
end
