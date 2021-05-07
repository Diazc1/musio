Rails.application.routes.draw do


  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy'

  get '/auth/:provider/callback', to: 'sessions#omniauth'

  get 'search', to: 'songs#search', as: 'search'
  
  resources :users, only: [:new, :create, :show]
  resources :comments

  
  resources :songs do
    resources :comments, only: [:index, :new, :create]
  end

 
  



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
