class App.Routers.MessagesRouter extends Backbone.Router
  routes:
    "messages"      : "init"
    "messages/new"  : "new"
    "messages/:id"  : "show"

  init: (callback)=>
    @threads = new App.Collections.MessageThreads
    @layout = new App.Views.Layouts.Messages
      threads: @threads
      el: $('#content')
    @threads.fetch
      success: callback

  show: (id) =>
    @ensureLayout =>
      @view = new App.Views.Threads.Show
        threads: @threads
        thread: @threads.get(id)
        el: $('#thread')
      @view.render()

  new: =>
    @ensureLayout =>
      @view = new App.Views.Threads.New
        threads: @threads
        el: $('#thread')
      @view.render()

  ensureLayout: (callback) =>
    if @layout
      @view?.undelegateEvents()
      callback()
    else
      @init => callback()
    
    false
