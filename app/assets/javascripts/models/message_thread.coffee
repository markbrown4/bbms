class BBMS.Models.MessageThread extends Backbone.Model
  paramRoot: 'message_thread'
    
class BBMS.Collections.MessageThreads extends Backbone.Collection
  url: -> "/message_threads"