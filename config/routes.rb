Rails.application.routes.draw do
  get 'answers/show'
  get 'responses/new'
  get 'responses/create'
  get 'responses/update'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :quizzes, only: [:show]
  resources :answers, only: [:show]
  resources :levels
end
