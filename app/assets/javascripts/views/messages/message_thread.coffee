class BBMS.Views.Messages.MessageThread extends Backbone.View
  tagName: 'li'
  template: JST["templates/messages/message_thread"]

  initialize: ->
    @render()

  render: =>
    $(@el).html @template(@model.toJSON())
    
    @