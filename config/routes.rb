Rails.application.routes.draw do
  devise_for :users
  resources :users
  namespace :users do
    resources  :trips , :pickups
  end
  root 'users#show'
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
