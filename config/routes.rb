Rails.application.routes.draw do
  require File.expand_path('../../lib/logged_in_constraint', __FILE__)

  get '/', to: 'dashboard#index', constraints: LoggedInConstraint.new, as: 'dashboard'
  get '/', to: 'login#index', as: 'login'

  post '/'   => 'sessions#create'
  delete '/' => 'sessions#destroy'
end
