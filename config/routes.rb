Rails.application.routes.draw do

  resources :dashboard, only: [:index]

  resources :section, only: [:show] do 
    resources :activity, only: [:new, :create, :edit, :update, :destroy]
  end
end
