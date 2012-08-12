class BBMS.Models.MessageThread extends Backbone.Model
  urlRoot: '/message_threads'
  
  initialize: =>
    @subscribers = []
    
  toggleSubscriber: (id)=>
    id = Number(id)
    index = @subscribers.indexOf(id)
    if index > 0
      @subscribers.slice index
    else
      @subscribers.push id


class BBMS.Collections.MessageThreads extends Backbone.Collection
  model: BBMS.Models.MessageThread
  url: '/message_threads'