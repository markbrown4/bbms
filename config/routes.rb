BackboneStart::Application.routes.draw do
  devise_for :users
  
  resources :users, :only => [:show, :index]
  resources :message_threads, :except => [:edit, :new] do
    resources :messages, :except => [:edit, :new]
    resources :subscriptions, :except => [:edit, :new]
  end
  get "messages" => "messages#index"
  root :to => "messages#index"
end
