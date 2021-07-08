Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :appointments
  resources :dogs, only: [:index, :new, :edit, :show]
  resources :doctors
  get "/signup", to: "users#new", as: "signup"
 
  resources :users, only: [:new, :create]

  get "/login", to: "sessions#new", as: "login"
    resources :sessions, only: [:create]
  delete "/logout", to: "sessions#destroy"

end
