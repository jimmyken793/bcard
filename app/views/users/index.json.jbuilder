json.array!(@users) do |user|
  json.extract! user, :id
  json.url musician_url(user, format: :json)
end
