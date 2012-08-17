class BBMS.Models.Message extends Backbone.Model
  urlRoot: -> "/message_threads/#{@thread.id}/messages"
    
class BBMS.Collections.Messages extends Backbone.Collection
  url: -> "/message_threads/#{@thread.id}/messages"