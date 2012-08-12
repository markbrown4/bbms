class BBMS.Views.Layouts.Messages extends Backbone.View
  template: JST["templates/layouts/messages"]

  initialize: ->
    @collection.on 'reset', @render
    @collection.on 'add', @addThread
    @collection.on 'remove', @removeTHread

  render: =>
    $(@el).html @template(threads: @collection.toJSON())
    
    @

  addThread: (thread)=>
    el = JST["templates/threads/item"](thread.toJSON())
    $('#threads').prepend(el)
    Backbone.history.navigate "messages/#{thread.id}", true
    
  removeThread: (thread)=>
    $("#thread-#{thread.id}").remove()
