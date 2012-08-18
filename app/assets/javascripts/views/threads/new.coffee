class BBMS.Views.Threads.New extends Backbone.View
  template: JST["templates/threads/new"]
  events:
    'click .send'           : 'send'
    'click #subscribers a'  : 'togglePerson'

  initialize: ->
    @threads = @options.threads
    @thread = new BBMS.Models.MessageThread
    @users = new BBMS.Collections.Users
    @users.fetch
      success: @render

  render: =>
    @$el.html @template(users: @users.toJSON())

  togglePerson: (event)=>
    $li = $(event.target).closest('li').toggleClass 'active'
    id = $li[0].id.replace 'user-', ''
    @thread.toggleSubscriber id
    
    false

  send: =>
    @thread.save
      subject: $('#subject').val()
      body: $('#body').val()
      subscribers: @thread.subscribers
    ,
      success: (thread)=>
        $('#body').val ''
        @threads.add @thread

    false
