class Beebs.Models.Subscription extends Backbone.Model
  paramRoot: 'subscription'
    
class Beebs.Collections.Subscriptions extends Backbone.Collection
  url: -> "/message_threads/#{@message_thread.id}/subscriptions"