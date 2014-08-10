Rails.application.routes.draw do

  root 'welcome#index'

  get '/welcome/login', to: 'welcome#login'
  post '/welcome/authenticate', to: 'welcome#authenticate'
  get '/welcome/signup', to: 'welcome#signup'
  post '/welcome/create_user', to: 'welcome#create_user'
  get '/computers/index', to: 'computers#index'
  post '/update', to: 'update#update_pick'
  get '/update', to: 'update#update_pick'
end
