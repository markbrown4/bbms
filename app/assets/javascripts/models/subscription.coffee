class BBMS.Models.Subscription extends Backbone.Model
  paramRoot: 'subscription'
    
class BBMS.Collections.Subscriptions extends Backbone.Collection
  url: -> "/message_threads/#{@message_thread.id}/subscriptions"