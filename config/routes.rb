Rails.application.routes.draw do
  # resources encapsulates all of the routes that the model uses
  # is it called RESTful routing
  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
