json.array!(@grade_levels) do |grade_level|
  json.extract! grade_level, :id, :number, :name
  json.url grade_level_url(grade_level, format: :json)
end
