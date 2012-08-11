class Beebs.Models.User extends Backbone.Model
  paramRoot: 'user'
    
class Beebs.Collections.Users extends Backbone.Collection
  url: -> "/users"