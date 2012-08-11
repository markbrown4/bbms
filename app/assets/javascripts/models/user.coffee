class BBMS.Models.User extends Backbone.Model
  paramRoot: 'user'
    
class BBMS.Collections.Users extends Backbone.Collection
  url: -> "/users"