Rails.application.routes.draw do
  get 'students/index'

  get 'sessions/login'
  post 'sessions/login'
  get 'sessions/logout'
  post 'sessions/logout'

  resources :assignments, except: [:destroy]
  resources :submissions, except: [:show, :update, :destroy]

  root 'assignments#index'
end
