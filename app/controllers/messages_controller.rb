class MessagesController < ApplicationController
  respond_to :json
  
  after_filter :read_messages, :only => [:index, :create]
  
  expose(:message_thread)
  expose(:messages) { message_thread.messages }
  expose(:message)
  
  def create
    @message = message_thread.messages.new body: params[:body], user_id: current_user.id
    @message.save
  end

  private 
  
  def read_messages
    message_thread.read!(current_user)
  end
  
end
