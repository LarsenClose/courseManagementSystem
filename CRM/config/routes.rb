Rails.application.routes.draw do
  resources :sections
  resources :students
  resources :courses
  resources :professors
  resources :departments
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
