class Beebs.Views.Messages.Index extends Backbone.View
  template: JST["templates/messages/index"]
  
  initialize: =>
    @collection.on 'reset', @render

  render: =>
    $(@el).html @template(subject: 'HELLO', avatar: '/assets/aang.jpg')
    
    @