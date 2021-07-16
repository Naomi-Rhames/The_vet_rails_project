Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :appointments do
    resources :veterinarians, only: [:index, :show]
  end
  resources :dogs
  resources :veterinarians, only: [:index, :show]
  get "/signup", to: "users#new", as: "signup"
 
  resources :users, only: [:new, :create]

  get "/login", to: "sessions#new", as: "login"
    resources :sessions, only: [:create]
  delete "/logout", to: "sessions#destroy"

  get "/auth/google_oauth2/callback", to: "sessions#google_omniauth"

end
