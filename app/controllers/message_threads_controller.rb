class MessageThreadsController < ApplicationController
  respond_to :json
  
  expose(:message_threads) { current_user.message_threads }
  expose(:message_thread)
end
