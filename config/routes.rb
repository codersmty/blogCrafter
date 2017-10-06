Rails.application.routes.draw do


  resources :comments
  # get 'comments/index'

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  resources :schedules
  resources :communities
  resources :users
  root to: "schedules#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
