class BBMS.Models.Message extends Backbone.Model
  paramRoot: 'message'
    
class BBMS.Collections.Messages extends Backbone.Collection
  url: -> "/message_threads/#{@message_thread.id}/messages"