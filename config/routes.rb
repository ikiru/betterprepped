Rails.application.routes.draw do
  resources :interviews
  use_doorkeeper

  root to: 'pages#index'
  get '/dashboard' => 'dashboard#index'
  get '/admin' => 'admin#index'

  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create]
  delete '/logout', to: 'sessions#destroy', as: :logout

  resources :questions
  resources :interview_types
  resources :positions
  resources :project_catagories
  resources :question_catagories
  resources :reports
  resources :businesses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
