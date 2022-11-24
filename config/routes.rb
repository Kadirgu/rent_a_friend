Rails.application.routes.draw do
  devise_for :users
  root to: "friend_services#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :bookings, only: :index
  resources :friend_services do
    resources :bookings, only: [:new, :create, :destroy]
  end
  resources :users
  get "my_listings", to: "friend_services#my_listings", as: "my_listings"

end
