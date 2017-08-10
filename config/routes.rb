Rails.application.routes.draw do
  get 'skills/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'home#index'
  resources :projects
  resources :skills
end
