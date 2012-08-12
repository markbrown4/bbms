json.(message, :id, :created_at, :body)
json.name       message.user.name
json.time_ago   "#{time_ago_in_words(message.created_at)} ago"
json.avatar     image_path(message.user.avatar)