Rails.application.routes.draw do
  get 'responses/new'
  get 'responses/create'
  get 'responses/update'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :quizzes, only: [:show]
  resources :responses
  resources :levels
end
