Rails.application.routes.draw do
  
  get 'courses/new'
  get 'courses/create'
  get 'sessions/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  post   '/users/:id', to: 'users#create'
  resources :users

end
