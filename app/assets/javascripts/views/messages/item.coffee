class BBMS.Views.Messages.Item extends Backbone.View
  tagName: 'li'
  template: JST["templates/messages/item"]

  initialize: =>
    @message = @options.message
    @render()

  render: =>
    @$el.html @template(@message.toJSON())
    @el.id = "message-#{@message.id}"
    
    @