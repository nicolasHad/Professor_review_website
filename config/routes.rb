Rails.application.routes.draw do
  get 'degrees/index'
  get 'sessions/new'
  get 'main_page/index'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  
  resources :reviews
  resources:professors
  resources:info
  resources:users
  resources:degrees

  resources :professors do
    resources :reviews
    resources :likes
    resources :dislikes
  end

  root 'main_page#index'
end
