BackboneStart::Application.routes.draw do
  devise_for :users
  
  resources :users, :only => [:show, :index]
  resources :message_threads, :except => [:edit, :new, :update] do
    resources :messages, :only => [:index, :create, :destroy]
    resources :subscriptions, :only => [:destroy]
  end
  
  get "*path" => "messages#index"
  
  root :to => "messages#index"
end
