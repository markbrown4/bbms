class BBMS.Routers.MessagesRouter extends Backbone.Router
  routes:
    "messages"      : "init"
    "messages/new"  : "new"
    "messages/:id"  : "show"

  init: (callback)=>
    @threads = new BBMS.Collections.MessageThreads
    @layout = new BBMS.Views.Layouts.Messages
      threads: @threads
      el: $('#content')
      
    @threads.fetch
      success: callback

  show: (id) =>
    @loadLayout =>
      new BBMS.Views.Threads.Show
        threads: @threads
        thread: @threads.get(id)
        el: $('#thread')

  new: =>
    @loadLayout =>
      new BBMS.Views.Threads.New
        threads: @threads
        el: $('#thread')

  loadLayout: (callback)=>
    if @content
      @content.undelegateEvents()
    if @layout
      @content = callback()
    else
      @init callback