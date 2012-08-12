class MessageThreadsController < ApplicationController
  respond_to :json
  
  expose(:message_threads) { current_user.message_threads }
  expose(:message_thread)

  def create
    @thread = message_threads.new subject: params[:subject]
    @thread.users << User.find(params[:subscribers].push(current_user.id))
    @thread.messages.new body: params[:body], user_id: current_user.id
    @thread.save
  end

end
