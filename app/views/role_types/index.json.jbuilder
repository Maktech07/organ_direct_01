json.array!(@role_types) do |role_type|
  json.extract! role_type, :id, :roleName
  json.url role_type_url(role_type, format: :json)
end
