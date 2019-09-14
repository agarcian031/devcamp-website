Rails.application.routes.draw do
  # custom paths for devise instead of having /users/sign_up etc.  
  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  root to: 'pages#home'
  # get 'pages/home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  # resources encapsulates all of the routes that the model uses
  # is it called RESTful routing
  resources :blogs do
    member do
      get :toggle_status 
    end 
  end 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :portfolios, except: [:show]
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  # not in use, just demonstration of custom scopes, controller methods, and routes 
  get 'angular-items', to: 'portfolios#angular'


end
