class MessageThreadsController < ApplicationController
  respond_to :json
  
  expose(:message_threads) { current_user.message_threads }
  expose(:message_thread)

  def create
    @thread = message_threads.new subject: params[:subject], user_id: current_user.id
    @thread.users << User.find(params[:subscribers])
    @thread.messages.new body: params[:body], user_id: current_user.id
    @thread.save
  end
  
  def destroy
    message_thread.unsubscribe current_user
    @thread = message_thread
  end

end
