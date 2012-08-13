class BBMS.Models.Message extends Backbone.Model
  urlRoot: -> "/message_threads/#{@message_thread.id}/messages"
    
class BBMS.Collections.Messages extends Backbone.Collection
  url: -> "/message_threads/#{@message_thread.id}/messages"