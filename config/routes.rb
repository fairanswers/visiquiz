Rails.application.routes.draw do
  resources :quizzes
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
