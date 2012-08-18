# A Backbone.js tutorial
We're going to build a messaging system where you can view a list of threads and messages, reply, add people to your message threads and unsubscribe from them.

## Install
Get the app running

    git clone git@github.com:markbrown4/bbms.git
    cd bbms
    rake db:create
    rake db:setup
    rails s

Log into http://localhost:3000/ as Azula with azula@gmail.com and "password"

## API

    GET    /message_threads.json                                       message_threads#index
    POST   /message_threads.json                                       message_threads#create
    expects { subject: "<subject>", subscribers: [<user_id's>], body: "<message>" }
    
    GET    /message_threads/:id.json                                   message_threads#show
    DELETE /message_threads/:id.json                                   message_threads#destroy
    
    GET    /message_threads/:message_thread_id/messages.json           messages#index
    POST   /message_threads/:message_thread_id/messages.json           messages#create
    expects { body: "<message>" }
    
    GET    /message_threads/:message_thread_id/subscriptions.json      subscriptions#index
    DELETE /message_threads/:message_thread_id/subscriptions/:id.json  subscriptions#destroy

