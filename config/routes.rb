Rails.application.routes.draw do
  resources :answers
  resources :questions
  resources :quizzes
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
