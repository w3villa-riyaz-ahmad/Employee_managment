Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  
  # RESTful routes for employees
  resources :employees
  
  root 'employees#index'
end
