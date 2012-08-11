#= require vendor/zepto
#= require vendor/underscore
#= require vendor/json2
#= require vendor/backbone
#= require_self
#= require_tree ./templates
#= require_tree ./models
#= require_tree ./views
#= require_tree ./routers

window.Beebs =
  Models: {}
  Collections: {}
  Routers: {}
  Views: {
    Messages: {}
  }
  
  init: ->
    new Beebs.Routers.MessagesRouter
    Backbone.history.start pushState: true

$ ->
  Beebs.init()