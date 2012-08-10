#= require vendor/zepto
#= require vendor/underscore
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
  Views: {}
  
  init: ->
    # Backbone.history.start(pushState: true)

$ ->
  BBM.init()