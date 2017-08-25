Rails.application.routes.draw do
  resources :questions
  resources :interviews
  resources :interview_types
  resources :positions
  resources :project_catagories
  resources :question_catagories
  resources :reports
  resources :businesses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
