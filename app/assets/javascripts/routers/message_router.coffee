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
    @layout.render()
    @threads.fetch
      success: callback

  show: (id) =>
    @ensureLayout @init, =>
      @view = new BBMS.Views.Threads.Show
        threads: @threads
        thread: @threads.get(id)
        el: $('#thread')
      @view.render()

  new: =>
    @ensureLayout @init, =>
      @view = new BBMS.Views.Threads.New
        threads: @threads
        el: $('#thread')
      @view.render()

  ensureLayout: (layoutInit, callback) =>
    if @layout
      @view?.undelegateEvents()
      callback()
    else
      layoutInit(callback)
