class App.Models.MessageThread extends Backbone.Model
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

class App.Collections.MessageThreads extends Backbone.Collection
  model: App.Models.MessageThread
  url: '/message_threads'