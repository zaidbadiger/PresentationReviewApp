Rails.application.routes.draw do
  get 'section_student/new'
  get 'section_student/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  post   '/users/:id', to: 'courses#create'
  post  '/courses/:id', to: 'sections#create'
  get '/courses/:id/sections/:id', to:'sections#show'
  post '/courses/:id/sections/:id', to:'section_student#create'
  get '/courses/:id/sections/:id/presentations/:id', to:'presentations#show'
  post '/courses/:id/sections/:id/presentations/:id', to:'presentations#create'


  get 'sessions/new'
  
  
  resources :users
  resources :courses
  resources :sections
  resources :presentations

end
