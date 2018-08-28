Rails.application.routes.draw do
  get "levels/download_pdf"
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
  get 'end', to: 'pages#end'
end
