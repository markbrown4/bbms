class SubscriptionsController < ApplicationController
  respond_to :json
  
  expose(:message_thread)
  expose(:subscriptions) { message_thread.subscriptions }
  expose(:subscription) { subscriptions.find_by_user_id params[:id] }
end
