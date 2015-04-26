Rails.application.routes.draw do
  require File.expand_path('../../lib/logged_in_constraint', __FILE__)

  get '/', to: 'dashboard#index', constraints: LoggedInConstraint.new
  get '/', to: 'login#index'

  post 'login'    => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
end
