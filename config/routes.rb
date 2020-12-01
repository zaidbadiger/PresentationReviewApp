Rails.application.routes.draw do
  resources :rosters
  resources :reviews
  resources :presents
  resources :presentations
  resources :sections
  resources :users
  root 'static_pages#home'
  get '/login', to: 'static_pages#login'
  get '/signup', to: 'static_pages#signup'
  get 'static_pages/student_home'
  get 'static_pages/instructor_home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
