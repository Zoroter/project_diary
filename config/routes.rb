Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  resources :students, only: [:new, :create]
  resources :users
  resources :teachers, only: [:new, :create]
  get 'dev', to: 'dev#main'
  resources :addresses, only: [:edit, :update]
  resources :tutors, only: [:new, :create]
  resources :subjects
  resources :terms
  resources :groups
  get 'main', to: 'subjects#index'
  resources :grades
end
