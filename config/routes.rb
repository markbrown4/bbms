BackboneStart::Application.routes.draw do
  devise_for :users
  
  resources :users, :only => :show
  resources :threads, :except => [:edit, :new] do
    resources :messages, :except => [:edit, :new]
    resources :subscriptions, :except => [:edit, :new]
  end
  
  root :to => "messages#index"
end
