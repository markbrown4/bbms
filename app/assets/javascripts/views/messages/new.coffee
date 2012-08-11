class BBMS.Views.Messages.New extends Backbone.View
  template: JST["templates/messages/new"]
  events:
    'click .send'   : 'send'
    'click .cancel' : 'cancel'

  initialize: ->
    @render()

  render: =>
    $(@el).html @template(users: [])
    
    @

  send: =>
    
    Backbone.history.navigate 'messages', true

    false

  cancel: =>
    Backbone.history.navigate 'messages', true
    
    false
