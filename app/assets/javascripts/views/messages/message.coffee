class Beebs.Views.Messages.Message extends Backbone.View
  tagName: 'li'
  template: JST["templates/messages/message"]

  initialize: =>
    @render()

  render: =>
    $(@el).html @template(@model.toJSON())
    
    @