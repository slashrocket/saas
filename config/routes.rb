Rails.application.routes.draw do
  require File.expand_path('../../lib/logged_in_constraint', __FILE__)

  get '/', to: 'dashboard#index', constraints: LoggedInConstraint.new, as: 'dashboard'
  get '/', to: 'login#index', as: 'login'
  match '/edit', to: 'login#edit', via: 'get', as: 'edit_profile'
  match '/update', to: 'login#update', via: 'patch', as: 'update_profile'

  post '/'   => 'sessions#create'
  delete '/' => 'sessions#destroy'
end
