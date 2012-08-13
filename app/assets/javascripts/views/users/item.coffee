class BBMS.Views.Users.Item extends Backbone.View
  tagName: 'li'
  template: JST["templates/users/item"]

  initialize: ->
    @render()

  render: =>
    @$el.html @template(@model.toJSON())
    @el.id = "user-#{@model.id}"