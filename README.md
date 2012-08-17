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

    GET    /message_threads                                       message_threads#index
    POST   /message_threads                                       message_threads#create
    expects { subject: "<subject>", subscribers: [<user_id's>], body: "<message>" }
    
    GET    /message_threads/:id                                   message_threads#show
    DELETE /message_threads/:id                                   message_threads#destroy
    
    GET    /message_threads/:message_thread_id/messages           messages#index
    POST   /message_threads/:message_thread_id/messages           messages#create
    expects { body: "<message>" }
    
    GET    /message_threads/:message_thread_id/subscriptions      subscriptions#index
    DELETE /message_threads/:message_thread_id/subscriptions/:id  subscriptions#destroy

