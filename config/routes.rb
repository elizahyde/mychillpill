Mychillpill::Application.routes.draw do
  get "worksheets/index"
  devise_for :users
  get '/writings', to: 'writings#index'
  get '/drawings', to: 'drawings#index'
  get '/worksheets', to: 'worksheets#index'
  get 'users/dashboard', to: 'users#dashboard'
  root 'users#index'

  resources :writings
  resources :worksheets

end
