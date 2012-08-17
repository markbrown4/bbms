class BBMS.Views.Threads.Show extends Backbone.View
  template: JST["templates/threads/show"]
  events:
    'click .focus-reply': 'focusReply'
    'click .reply': 'reply'
    'click .unsubscribe': 'unsubscribe'

  initialize: ->
    @thread = @options.thread
    @thread.messages.on 'reset', @loadMessages
    @thread.messages.on 'add', @addMessage
    
    @thread.messages.fetch()

  render: =>
    @$el.html @template(@thread.toJSON())
    
    $('#threads li.active').removeClass 'active'
    $("#thread-#{@thread.id}").addClass 'active'

  focusReply: ->
    $('#message_body').focus()
    
    false

  reply: =>
    @thread.newMessage $('#message_body').val()
    
    false

  unsubscribe: ->
    @thread.destroy()
    
    false

  loadMessages: (messages)=>
    $('#messages').html ''
    messages.each (message) => @addMessage message

  addMessage: (message)=>
    $el = $ JST["templates/messages/item"](message.toJSON())
    $('#messages').append $el

