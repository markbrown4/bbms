class BBMS.Routers.MessagesRouter extends Backbone.Router

  routes:
    "messages"      : "index"
    "messages/new"  : "new"
    "messages/:id"  : "show"

  index: (callback)=>
    @threads = new BBMS.Collections.MessageThreads()
    @indexView = new BBMS.Views.Messages.Index(collection: @threads, el: $('#content'))
    @threads.fetch
      success: callback

  show: (id) =>
    if @threads
      @showView = new BBMS.Views.Messages.MessageThread model: @threads.get(id)
    else
      @index(@show(id))

  new: =>
    if @threads
      @new_view = new BBMS.Views.Messages.New(el: $('#thread'))
    else
      @index(@new)