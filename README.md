# A Backbone.js tutorial
We're going to build a messaging system where you can view a list of threads and messages, reply, add people to your message threads and unsubscribe from them.

## Install
Install Pow
    curl get.pow.cx | sh

Get the app running
    git clone git@github.com:markbrown4/beebs.git
    cd beebs
    rake db:setup
    cd ~/.pow
    ln -s <path-to-app>

Log into http://beebs.dev/ as Azula with azula@gmail.com and "password"
Other users are Aang, Mako & Toph @gmail.com

## API
    GET    /users/:id(.:format)                            users#show
    GET    /threads/:thread_id/messages(.:format)          messages#index
    POST   /threads/:thread_id/messages(.:format)          messages#create
    GET    /threads/:thread_id/messages/:id(.:format)      messages#show
    PUT    /threads/:thread_id/messages/:id(.:format)      messages#update
    DELETE /threads/:thread_id/messages/:id(.:format)      messages#destroy
    GET    /threads/:thread_id/subscriptions(.:format)     subscriptions#index
    POST   /threads/:thread_id/subscriptions(.:format)     subscriptions#create
    GET    /threads/:thread_id/subscriptions/:id(.:format) subscriptions#show
    PUT    /threads/:thread_id/subscriptions/:id(.:format) subscriptions#update
    DELETE /threads/:thread_id/subscriptions/:id(.:format) subscriptions#destroy
    GET    /threads(.:format)                              threads#index
    POST   /threads(.:format)                              threads#create
    GET    /threads/:id(.:format)                          threads#show
    PUT    /threads/:id(.:format)                          threads#update
    DELETE /threads/:id(.:format)                          threads#destroy

