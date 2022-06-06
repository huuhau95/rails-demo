Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get "/load-ajax", to: "employess#loadAjax"

  resources :employess
  # Defines the root path route ("/")
  root "employess#index"
end
