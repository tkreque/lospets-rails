Rails.application.routes.draw do
  resources :pets
  resources :users
  resources :animals
  
  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get '/pets',     to: 'pets#index'
end
