class BBMS.Views.Layouts.Messages extends Backbone.View
  template: JST["templates/layouts/messages"]

  initialize: =>
    @threads = @options.threads
    @threads.on 'reset', @render
    @threads.on 'add', @addThread
    @threads.on 'remove', @removeThread

  render: =>
    $(@el).html @template(threads: @threads.toJSON())
    id = @threads.at(0)?.id
    if id
      Backbone.history.navigate "messages/#{id}", true
    @

  addThread: (thread)=>
    el = JST["templates/threads/item"](thread.toJSON())
    $('#threads').prepend(el)
    Backbone.history.navigate "messages/#{thread.id}", true

  removeThread: (thread)=>
    $("#thread-#{thread.id}").remove()
