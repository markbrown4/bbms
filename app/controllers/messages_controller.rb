class MessagesController < ApplicationController
  respond_to :json
  
  expose(:message_thread)
  expose(:messages) { message_thread.messages }
  expose(:message)
  
  def create
    @message = message_thread.messages.new body: params[:body], user_id: current_user.id
    @message.save
  end

end
