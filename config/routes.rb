Rails.application.routes.draw do
  # root to: 'users#new'
  get 'users/new'
  get 'users/create'
  resources :users, only:[:new, :create]
end
