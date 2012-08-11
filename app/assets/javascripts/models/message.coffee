class Beebs.Models.Message extends Backbone.Model
  paramRoot: 'message'
    
class Beebs.Collections.Messages extends Backbone.Collection
  url: -> "/message_threads/#{@message_thread.id}/messages"