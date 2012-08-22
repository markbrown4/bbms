#= require vendor/zepto
#= require vendor/underscore
#= require vendor/json2
#= require vendor/backbone
#= require vendor/backbone_rails_sync
#= require util
#= require_self
#= require_tree ./helpers
#= require_tree ./templates
#= require_tree ./models
#= require_tree ./views
#= require_tree ./routers

window.App =
  Models: {}
  Collections: {}
  Routers: {}
  Views: {
    Layouts: {}
    Messages: {}
    Threads: {}
    Users: {}
  }
  
  init: ->
    new App.Routers.MessagesRouter
    Backbone.history.start pushState: true
    
$ ->
  App.init()

  $('body').on 'click', 'a[data-route]', ->
    route = $(this).attr('href').substring(1)
    Backbone.history.navigate route, trigger: true

    false