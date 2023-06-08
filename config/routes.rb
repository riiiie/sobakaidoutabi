Rails.application.routes.draw do
  get 'shops/index'
  get 'shops/new'
  get 'shops/create'
  get 'shops/show'
  get 'shops/edit'
  get 'shops/update'
  get 'shops/destroy'
  get 'user_sessions/new'
  get 'user_sessions/create'
  root 'static_pages#top'

  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'

  resources :users, only: %i[new create]
end
