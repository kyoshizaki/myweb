Rails.application.routes.draw do
 resources :posts
 resources :posts do
  resources :comments
 end
 resources :users
 resources :sessions
 root 'posts#index'

 get "up" => "rails/health#show", as: :rails_health_check
end
