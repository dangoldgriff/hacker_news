HackerNews::Application.routes.draw do
  resources :links, :except => [:update, :destroy, :edit]
  resources :votes, :only => [:create]
  resources :users, :except => [:index]
  resources :comments, :only => [:new, :create]
  resources :sessions

  root :to => 'links#index'
end
