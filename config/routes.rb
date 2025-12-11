Rails.application.routes.draw do
      devise_for :users, controllers: {
        sessions: "users/sessions",
        registrations: "users/registrations",
        passwords: "users/passwords",
        confirmations: "users/confirmations"
      }

  get "up" => "rails/health#show", as: :rails_health_check

  # RESTful routes for employees
  resources :employees
  resources :documents


  root "employees#index"
end
