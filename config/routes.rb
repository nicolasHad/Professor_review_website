Rails.application.routes.draw do
  get 'sessions/new'
  get 'main_page/index'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  
  resources :reviews
  resources:professors
  resources:info
  resources:users

  resources :professors do
    resources :reviews
    resources :likes
    resources :dislikes
    resources :image_elements
  end

  root 'main_page#index'
end
