Rails.application.routes.draw do
  root 'login#index'

  post 'login'    => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  get 'dashboard'     => 'dashboard#index'
end
