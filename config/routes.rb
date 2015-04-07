Rails.application.routes.draw do
  resources :episodios

  resources :temporadas

  get 'welcome/index'

  resources :series
  resources :movies

  root 'welcome#index'
end
