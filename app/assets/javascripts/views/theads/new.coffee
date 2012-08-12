class BBMS.Views.Threads.New extends Backbone.View
  template: JST["templates/threads/new"]
  events:
    'click .send'           : 'send'
    'click #subscribers a'  : 'togglePerson'

  initialize: ->
    @model = new BBMS.Models.MessageThread
    @users = new BBMS.Collections.Users
    @users.fetch
      success: @render

  render: =>
    @$el.html @template(users: @users.toJSON())
    
    @

  togglePerson: (event)=>
    $li = $(event.target).closest('li').toggleClass('active')
    id = $li[0].id.replace('user-', '')
    @model.toggleSubscriber id
    
    false

  send: =>
    @model.save
      subject: $('#subject').val()
      body: $('#body').val()
      subscribers: @model.subscribers
    ,
      success: (model)=>
        @collection.add @model

    false
