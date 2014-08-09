Rails.application.routes.draw do

  root 'welcome#index'

  get '/users/login', to: 'users#login'
  post '/users/authenticate', to: 'users#authenticate'
  get '/users/signup', to: 'users#signup'
  post '/users/create_user', to: 'users#create_user'
  get '/computers/index', to: 'computers#index'
  post '/update', to: 'update#update_pick'
  get '/update', to: 'update#update_pick'
end
