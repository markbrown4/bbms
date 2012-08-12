class BBMS.Views.Messages.Item extends Backbone.View
  tagName: 'li'
  template: JST["templates/messages/item"]

  initialize: ->
    @render()

  render: =>
    @$el.html @template(@model.toJSON())
    @el.id = "message-#{@model.id}"
    
    @