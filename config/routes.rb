Rails.application.routes.draw do
  resources :comments
  resources :complaints
  resources :people
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'complaints#index'
  mount PostgresqlLoStreamer::Engine => 'complaint_photo'
end
