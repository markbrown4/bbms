class BBMS.Views.Threads.Show extends Backbone.View
  template: JST["templates/threads/show"]
  events:
    'click .focus-reply': 'focusReply'
    'click .reply': 'reply'
    'click .unsubscribe': 'unsubscribe'

  initialize: ->
    @thread = @options.thread
    @thread.messages.on 'add', @addMessage
    
    @render()

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

  addMessage: (message)=>
    $el = $ JST["templates/messages/item"](message.toJSON())
    $('#messages').append $el
    yellowFade $el

