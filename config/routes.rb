Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :appointments
  resources :patients, only: [:index]
  resources :doctors
  resources :users, only: [:new, :create]

  get "/login", to: "sessions#new", as: "login"
    resources :sessions, only: [:create]
    delete "/login", to: "sessions#destroy"

end
