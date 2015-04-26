Rails.application.routes.draw do
  get 'dashboard/index'

  root 'dashboard#index', constraints: LoggedInConstraint.new(true),
                          as: authenticated_root
  root 'login#index', constraints: LoggedInConstraint.new(false)

  post 'login'    => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
end
