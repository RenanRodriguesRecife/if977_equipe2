Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/new'
  resources :users
  get    'sign_in'   => 'sessions#new'
  post   'sign_in'   => 'sessions#create'
  delete 'sign_out'  => 'sessions#destroy'
  resources :comments
  resources :complaints
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'sessions#new'
  mount PostgresqlLoStreamer::Engine => 'complaint_photo'
end
