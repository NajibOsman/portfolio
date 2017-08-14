Rails.application.routes.draw do
  get 'post/index'

  devise_for :users
  get 'blog/index'

  get 'skills/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'home#index'
  resources :projects
  resources :skills
  resources :blogs

end
