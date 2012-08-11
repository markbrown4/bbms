class Beebs.Models.MessageThread extends Backbone.Model
  paramRoot: 'message_thread'
    
class Beebs.Collections.MessageThreads extends Backbone.Collection
  url: -> "/message_threads"