Rails.application.routes.draw do
  get 'home/index'

  resources :projects

  root 'projects#index'
end
