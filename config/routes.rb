Rails.application.routes.draw do
  devise_for :users do
    get "/users/sign_out" => "devise/sessions#destroy", :as => :destroy_user_session
  end
  resources :comments
  resources :users
  resources :complaints do
    resources :likes
    resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'complaints#index'
  mount PostgresqlLoStreamer::Engine => 'complaint_photo'
end
