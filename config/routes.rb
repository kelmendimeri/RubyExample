Rails.application.routes.draw do

  resources :articles
  namespace :users do
    get 'dashboard/index'
  end
  devise_for :users do
  end
  root 'home#index'
  get 'about', to: 'home#about'
  get 'campaings', to: 'home#campaign'



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
