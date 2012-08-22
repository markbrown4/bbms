class App.Views.Threads.Show extends Backbone.View
  template: JST["templates/threads/show"]
  events:
    'click .focus-reply': 'focusReply'
    'click .reply': 'reply'
    'click .unsubscribe': 'unsubscribe'

  initialize: ->
    @thread = @options.thread
    @messages = new App.Collections.Messages
    @messages.thread = @thread
    @messages.on 'reset', @loadMessages
    @messages.on 'add', @addMessage
    
    @messages.fetch()

  render: =>
    @$el.html @template(@thread.toJSON())
    
    $('#threads li.active .unread_count').remove()
    $('#threads li.active').removeClass 'active'
    $("#thread-#{@thread.id}").addClass 'active'

  focusReply: ->
    $('#message_body').focus()
    
    false

  reply: =>
    message = new App.Models.Message
    message.thread = @thread
    message.save
      body: $('#message_body').val()
    ,
      success: (model)=> @messages.add message
    
    false

  unsubscribe: ->
    @thread.destroy()
    
    false

  loadMessages: (messages)=>
    console.log 'loadMessages'
    $('#messages').html ''
    messages.each (message) => @addMessage message

  addMessage: (message)=>
    console.log 'addMessage'
    $el = $ JST["templates/messages/item"](message.toJSON())
    $('#messages').append $el

