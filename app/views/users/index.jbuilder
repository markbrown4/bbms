json.array!(users) do |json, user|
  json.partial! "user", user: user
end