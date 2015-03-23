Rails.application.routes.draw do
  get 'welcome/index'

  resources :series
  resources :movies

  root 'welcome#index'
end
