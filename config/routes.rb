Rails.application.routes.draw do
  devise_for :doctor, path: 'doctor'
  devise_for :users

  root to: 'home#index'

  resources :doctor, only: [:index]
  resources :welcome, only: [:index]
  resources :patients
  resources :patient_appointments

  # devise_for :users
  # get "appointments/new"
  # get "appointments/create"
  # root "welcome#index"
  # resources :patients,only: [:new,:create,:index]
  # resources :oppointments,only: [:new,:create,:index]
  # get "oppointment/new"
  # get "oppointment/create"
  # get "oppointment/index"
  # root "patients#index"
  # root "oppointment#index"
  # get "patients/new"
  # get "patients/create"
  # get "patients/index"
  # # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
#   resources :patients, only: [:new, :create, :index]
#   resources :oppointments, only: [:new, :create, :index]
   delete '/users/sign_out', to: 'devise/sessions#destroy'
   delete 'doctors/sign_out', to: 'devise/sessions#destroy'
end