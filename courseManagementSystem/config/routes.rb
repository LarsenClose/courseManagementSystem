Rails.application.routes.draw do
  resources :departments
  resources :semesters
  resources :professors
  resources :courses
  resources :sections
  resources :students
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
