Rails.application.routes.draw do
  namespace :web do
    get 'photos/index'
    get 'photos/show/:id', to: "photos#show", as: "albumPhoto"
    get 'events/calendar'
    get 'events/show'
  end
  get "pages/home", as: "home"
  get "pages/panel", as: "panel"
  resources :sponsors
  resources :photos
  resources :albums
  resources :events
  resources :pages
  resources :sections
  
  devise_scope :user do
    # Redirects signing out users back to sign-in
    get "users", to: "devise/sessions#new"
  end
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
end
