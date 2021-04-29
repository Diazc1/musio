Rails.application.routes.draw do
  resources :comments
  resources :songs
  resources :users, only: [:new, :create, :show]

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy'




  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
