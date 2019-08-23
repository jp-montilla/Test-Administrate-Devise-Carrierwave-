Rails.application.routes.draw do
  devise_for :administrators
  get 'feed/index'

  namespace :admin do
    resources :users
    resources :works
    resources :teams
    resources :administrators

    root to: "users#index"
  end
  
  root to: "feed#index"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
