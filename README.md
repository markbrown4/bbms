# A Backbone.js tutorial
We're going to build a messaging system where you can view a list of threads and messages, reply, add people to your message threads and unsubscribe from them.

## Install
Install Pow

    curl get.pow.cx | sh

Get the app running

    git clone git@github.com:markbrown4/bbms.git
    cd bbms
    rake db:setup
    cd ~/.pow
    ln -s <path-to-app>

Log into http://bbms.dev/ as Azula with azula@gmail.com and "password"
Other users are Aang, Mako & Toph @gmail.com

## API
    GET    /users/:id.json                            users#show
    GET    /users.json                                users#index
    GET    /threads/:thread_id/messages.json          messages#index
    POST   /threads/:thread_id/messages.json          messages#create
    GET    /threads/:thread_id/messages/:id.json      messages#show
    PUT    /threads/:thread_id/messages/:id.json      messages#update
    DELETE /threads/:thread_id/messages/:id.json      messages#destroy
    GET    /threads/:thread_id/subscriptions.json     subscriptions#index
    POST   /threads/:thread_id/subscriptions.json     subscriptions#create
    GET    /threads/:thread_id/subscriptions/:id.json subscriptions#show
    PUT    /threads/:thread_id/subscriptions/:id.json subscriptions#update
    DELETE /threads/:thread_id/subscriptions/:id.json subscriptions#destroy
    GET    /threads.json                              threads#index
    POST   /threads.json                              threads#create
    GET    /threads/:id.json                          threads#show
    PUT    /threads/:id.json                          threads#update
    DELETE /threads/:id.json                          threads#destroy

