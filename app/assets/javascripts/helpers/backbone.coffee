class BBMS.ListView extends Backbone.View
  initialize: ->
    @render()

  render: =>
    @collection.each (model)=>
      view = new @options.view model: model
      @$el.append view.render().el
    
    @
  
  append: (model)=>
    view = new @options.view model: model
    @$el.append view.render().el
    
    @
  
  prepend: (model)=>
    view = new @options.view model: model
    @$el.prepend view.render().el

    @
