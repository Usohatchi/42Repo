Rails.application.routes.draw do
  get 'home/index'

  resources :projects

  root 'home#index'
end
