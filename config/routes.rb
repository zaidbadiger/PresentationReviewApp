Rails.application.routes.draw do
  root 'static_pages#home'
  get 'static_pages/login'
  get 'static_pages/signup'
  get 'static_pages/student_home'
  get 'static_pages/instructor_home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
