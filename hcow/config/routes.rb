Rails.application.routes.draw do
  get 'site/home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "site#home"
end
