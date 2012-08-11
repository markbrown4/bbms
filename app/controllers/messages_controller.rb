class MessagesController < ApplicationController
  respond_to :json
  
  expose(:message_thread)
  expose(:messages) { message_thread.messages }
  expose(:message)
end
