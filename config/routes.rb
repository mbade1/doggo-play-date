Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'sessions#welcome'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  delete '/session' => 'sessions#destroy'
  post '/parks/:park_id/playdates/new' => 'playdates#create'

  
  resources :parks do 
    resources :comments
    resources :playdates, only: [:show, :index, :new]
  end
  resources :playdates, only: [:index, :show, :create, :edit, :update, :destroy]

  resources :users, only: [:new, :create, :show]
end
