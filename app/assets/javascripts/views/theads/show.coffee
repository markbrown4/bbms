class BBMS.Views.Threads.Show extends Backbone.View
  template: JST["templates/threads/show"]
  events:
    'click .reply': 'focusReply'
    'click #reply-button': 'reply'
    'click .unsubscribe': 'unsubscribe'

  initialize: ->
    @render()
    
    $('#threads li.active').removeClass('active');
    $("#thread-#{@model.id}").addClass('active');

  render: =>
    @$el.html @template(@model.toJSON())

  focusReply: ->
    $('#message_body').focus()
    
    false

  reply: ->
    
    false

  unsubscribe: ->
    
    false