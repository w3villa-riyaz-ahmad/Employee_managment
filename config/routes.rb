Rails.application.routes.draw do
  devise_for :users
  get "up" => "rails/health#show", as: :rails_health_check
  
  # RESTful routes for employees
  resources :employees
  resources :documents
  
  
  root 'employees#index'
end
