Rails.application.routes.draw do
  resources :orders
  resources :shippings
  resources :clients
  resources :books
  resources :categories
  resources :authors
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  
  namespace :backoffice do
    devise_for :users, controllers: { :sessions => "backoffice/sessions", :registrations => "backoffice/registrations" }
    root "dashboard#home"
  end

end
