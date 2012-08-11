class Beebs.Views.Messages.New extends Backbone.View
  template: JST["templates/messages/new"]

  initialize: =>
    @render()

  render: =>
    $(@el).html @template({
      subject: 'YO'
    })
    
    @