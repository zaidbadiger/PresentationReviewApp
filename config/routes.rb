Rails.application.routes.draw do
  get 'presentation_student/new'
  get 'presentation_student/show'
  get 'presentation_student/create'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'sessions#new'
  get 'sessions/new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/signup', to: 'users#new'

  post '/courses/new', to: 'courses#create'
  post '/courses/:id', to: 'sections#create'

  # Roster routes
  get '/sections/:section_id/rosters', to: 'rosters#show'
  get '/sections/:section_id/rosters/add', to: 'rosters#new'
  post '/sections/:section_id/rosters/add', to: 'rosters#create'

  # add presentation to section
  get '/courses/:id/sections/:id/presentations/:id', to: 'presentations#show'
  post '/courses/:id/sections/:id/presentations/:id', to: 'presentations#create'

  # add student to presentation
  get '/sections/:id/presentations/:id', to: 'presentation_student#new'
  post '/sections/:id/presentations/:id', to: 'presentation_student#create'

  # add review
  get '/presentations/:id/reviews/new', to: 'reviews#new'
  post '/presentations/:id/reviews/new', to: 'reviews#create'

  # list reviews for a presentation
  get '/reviews/:id', to: 'reviews#index'

  # delete a presentation as an instructor
  delete '/presentations/:id', to: 'presentations#destroy'

  resources :users
  resources :courses
  resources :sections
  resources :presentations
  resources :reviews
end
