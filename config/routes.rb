Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to:'administrations#index'
  
  get 'pages/home'

  get 'pages/about'
  resources :administrations
  resources :assessments
  resources :programs
  resources :faculties
  resources :committees
  resources :adminstrations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
