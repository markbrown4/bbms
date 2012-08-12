json.(message_thread, :id, :created_at, :subject)
json.avatar       image_path(message_thread.avatar)
json.time_ago     time_ago message_thread.created_at
json.subscribers  message_thread.users do |json, user|
  json.partial! "users/user", user: user
end
json.messages   message_thread.messages do |json, message|
  json.partial! "messages/message", message: message
end