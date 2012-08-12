json.array!(message_threads) do |json, message_thread|
  json.partial! "message_thread", message_thread: message_thread
end