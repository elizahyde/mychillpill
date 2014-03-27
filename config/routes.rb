Mychillpill::Application.routes.draw do
  devise_for :users
  get '/writings', to: 'writings#index'
  get '/drawings', to: 'drawings#index'
  get '/worksheets', to: 'worksheets#index'
  get 'users/dashboard', to: 'users#dashboard'
  get '/about', to: 'users#about'
  root 'users#index'
  resources :writings
  resources :worksheets
end