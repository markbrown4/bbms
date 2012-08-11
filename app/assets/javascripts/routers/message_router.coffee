class Beebs.Routers.MessagesRouter extends Backbone.Router

  routes:
    "messages"      : "index"
    "messages/:id"  : "show"
    "messages/new"  : "new"

  index: (callback)->
    @threads = new Beebs.Collections.MessageThreads()
    @indexView = new Beebs.Views.Messages.Index(collection: @threads, el: $('#content'))
    @threads.fetch
      success: callback || ->

  show: (id) ->
    if @threads
      @showView = new Beebs.Views.Messages.MessageThread model: @threads.get(id)
    else
      @index -> @show(id)
    end

  new: ->
    if @threads
      @new_view = new Beebs.Views.Messages.New model: @threads.get(id)
    else
      @index -> @show(id)
    end