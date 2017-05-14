Rails.application.routes.draw do
  
  devise_for :users
  resources :posts do 
    post "/like", to: "likes#like" 
    resources :comments, only: [:create, :destroy] 
  end

  resources :informs
  get '/informs', to: 'informs#home'
  
  root "informs#main"
  post "/like", to: "likes#like_toggle"
  
  
end