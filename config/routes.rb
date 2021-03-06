Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'sessions#welcome'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  delete '/session' => 'sessions#destroy'
  get '/auth/facebook/callback' => 'sessions#facebook_login'
  post '/playdates/dates', to: "playdates#dates"
  
  #five star review route
  post '/parks/five_star_reviews', to: "parks#reviews"
  
  resources :parks  do 
    resources :comments, only: [:new, :create, :edit, :update, :destroy]    
    resources :playdates, only: [:index, :new, :create, :show, :edit, :update, :destroy] 
  end
  resources :users, only: [:new, :create, :show, :edit]    #new, create, edit, show
end
