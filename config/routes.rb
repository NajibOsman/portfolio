Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'home#index'
  resources :projects
  resources :skills

  resources :posts do
    resources :comments
  end
  resources :users
  devise_for :users
end
