Rails.application.routes.draw do
  get 'projects/index'
  root to: 'tops#index'

  get '/login',to: 'sessions#new'
  post 'login',to: 'sessions#create'
  delete '/logout',to: 'sessions#destroy'

  get '/projects',to: 'projects#index'
  resources :projects

  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
