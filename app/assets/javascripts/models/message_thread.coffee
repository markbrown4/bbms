class BBMS.Models.MessageThread extends Backbone.Model
  urlRoot: '/message_threads'
  
  initialize: =>
    @subscribers = []
    @messages = new BBMS.Collections.Messages

  toggleSubscriber: (id)=>
    id = Number(id)
    index = @subscribers.indexOf(id)
    if index > 0
      @subscribers.slice index
    else
      @subscribers.push id

  newMessage: (body)=>
    message = new BBMS.Models.Message
    message.message_thread = @
    message.save
      body: body
    ,
      success: (model)=> @messages.add message

class BBMS.Collections.MessageThreads extends Backbone.Collection
  model: BBMS.Models.MessageThread
  url: '/message_threads'