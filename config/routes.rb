Rails.application.routes.draw do
  root 'sessions#welcome'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  delete '/session' => 'sessions#destroy'
  post '/parks/:park_id/playdates/new' => 'playdates#create'

  
  resources :parks do 
    resources :playdates, only: [:show, :create, :edit, :destroy, :new]
    resources :comments
  end

  resources :users, only: [:new, :create, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
