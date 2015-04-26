Rails.application.routes.draw do
  get 'dashboard/index'

  root 'login#index'

  post 'login'    => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  get 'dashboard'     => 'dashboard#index'
end
