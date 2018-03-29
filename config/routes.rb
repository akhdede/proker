Rails.application.routes.draw do

  resources :dashboard, only: [:index]

  resources :sections, only: [:show] do 
    resources :activities, except: [:index], controller: 'sections/activities'
  end
end
