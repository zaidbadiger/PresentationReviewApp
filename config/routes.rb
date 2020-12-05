Rails.application.routes.draw do

  get 'presenters/new'
  get 'presenters/create'
  get 'presenter/new'
  get 'presenter/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'sessions#new'
  get 'sessions/new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/signup', to: 'users#new'

  post '/courses/new', to: 'courses#create'
  delete '/courses/:course_id', to: 'courses#destroy'

  post '/courses/:id', to: 'sections#create'
  delete '/sections/:section_id', to: 'sections#destroy'

  # Roster routes
  get '/sections/:section_id/rosters', to: 'rosters#show'
  get '/sections/:section_id/rosters/add', to: 'rosters#new'
  post '/sections/:section_id/rosters/add', to: 'rosters#create'
  delete '/sections/:section_id/rosters/:roster_id', to: 'rosters#destroy'

  # add presentation to section
  get '/courses/:course_id/sections/:section_id/presentations/new', to: 'presentations#new'
  post '/courses/:course_id/sections/:section_id/presentations/new', to: 'presentations#create'

  # add student to presentation
  get '/sections/:section_id/presentations/:presentation_id', to: 'presenters#new'
  post '/sections/:section_id/presentations/:presentation_id', to: 'presenters#create'
  delete '/sections/:section_id/presentations/:presentation_id/presenters/:presenter_id', to: 'presenters#destroy'

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
