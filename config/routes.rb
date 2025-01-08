Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"
  
  get "employees" => "employees#index", as: "employees"
  get "employees/new" => "employees#new", as: "employee_new"
  get "employees/edit/:id" => "employees#edit", as: "edit_employee"
  get "employees/:id" => "employees#show", as: "employee"
  get "delete_employee/:id" => "employees#delete_employee", as: "delete_employee"

  patch "employees/:id" => "employees#update"
  delete "employees/:id" => "employees#destroy"
  post "employees" => "employees#create", as: "employee_create"
end
