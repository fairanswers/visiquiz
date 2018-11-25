Rails.application.routes.draw do
  resources :answers
  resources :questions
  resources :quizzes
  root to: 'visitors#index'
  devise_for :users
  resources :users
  get  '/start_quiz/:id', to: 'quizzes#start_quiz'
  get  '/ask_question', to: 'quizzes#ask_question'
  post '/answer_question', to: 'quizzes#answer_question'
  get  '/show_results', to: 'quizzes#show_results'
end
