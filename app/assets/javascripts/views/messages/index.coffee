class BBMS.Views.Messages.Index extends Backbone.View
  template: JST["templates/messages/index"]
  events:
    'click #new-message': 'new'
    'click .reply': 'focusReply'
    'click #reply-button': 'reply'
    'click .unsubscribe': 'unsubscribe'
    'click .add-people': 'addPeople'

  initialize: ->
    @collection.on 'reset', @render

  render: =>
    $(@el).html @template(subject: 'HELLO', avatar: '/assets/aang.jpg')
    
    @

  new: ->
    Backbone.history.navigate 'messages/new', true
    
    false

  focusReply: ->
    $('#message_body').focus()
    
    false

  reply: ->
    
    false

  unsubscribe: ->
    
    false

  addPeople: ->
    
    false

