Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  # resources :pet_tags
  # resources :tags
  # resources :animals
  resources :pets
  resources :users
  
  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get '/pets',     to: 'pets#index'
end
