class BBMS.Routers.MessagesRouter extends Backbone.Router

  routes:
    "messages"      : "init"
    "messages/new"  : "new"
    "messages/:id"  : "show"

  init: (callback)=>
    @threads = new BBMS.Collections.MessageThreads
    @layout = new BBMS.Views.Layouts.Messages collection: @threads, el: $('#content')
    @threads.fetch
      success: callback

  show: (id) =>
    @loadLayout =>
      new BBMS.Views.Threads.Show
        collection: @threads
        model: @threads.get(id)
        el: $('#thread')

  new: =>
    @loadLayout =>
      new BBMS.Views.Threads.New
        collection: @threads
        el: $('#thread')

  loadLayout: (callback)=>
    if @content
      @content.undelegateEvents()
    if @layout
      @content = callback()
    else
      @init callback