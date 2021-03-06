Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :dishes do
    resources :bookings, only: [:create]
  end
  resources :bookings, only: [:show]
  resources :users, only: [:show] do
    resources :ratings, only: [:new, :create]
  end
  # delete in prod
  get "/style", to: "pages#style"
  get "/become_cooker", to: "users#become_cooker", as: 'cooker'
end
