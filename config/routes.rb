Rails.application.routes.draw do
  require File.expand_path('../../lib/logged_in_constraint', __FILE__)

  root 'dashboard#index'
  get '/', to: 'dashboard#index', as: 'dashboard'
  get '/login', to: 'login#index', as: 'login'
  match '/edit', to: 'login#edit', via: 'get', as: 'edit_profile'
  match '/update', to: 'login#update', via: 'patch', as: 'update_profile'

  post '/login'   => 'sessions#create'
  delete '/login' => 'sessions#destroy'
end
