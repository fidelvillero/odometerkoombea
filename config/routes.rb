Odometer::Application.routes.draw do
  #devise_for :users, controllers: {registrations: "users/registrations"}

  #resources :profiles, only: [:show], controller: "users/profiles"

  #root to: "pages#index"
  
  devise_for :users, controllers: {registrations: "users/registrations"}
  
  resource :profile, only: [:show, :edit, :new], controller: "users/profiles"
  
  resources :stations
  
  resources :locations
  
  #root :to => "profiles#index"
  root :to => "users/profiles#show"
end
