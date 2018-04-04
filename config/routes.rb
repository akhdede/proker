Rails.application.routes.draw do

  devise_for :users

  root 'dashboard#index'

  resources :dashboard, only: [:index]

  resources :sections, only: [:show] do 
    resources :activities, controller: 'sections/activities'
  end

end
