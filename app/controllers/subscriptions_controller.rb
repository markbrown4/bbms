class SubscriptionsController < ApplicationController
  respond_to :json
  
  expose(:message_thread)
  expose(:subscriptions) { message_thread.subscriptions }
  expose(:subscription)
end
