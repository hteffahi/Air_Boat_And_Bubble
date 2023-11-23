Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :boats do
    resources :bookings, only: %i[new create edit update show]
    patch '/bookings/:id/update_false', to: 'bookings#update_false', as: 'update_false_booking'
  end
  resources :boat, only: [:destroy]
  get "/dashboard", to: "pages#show"
end
