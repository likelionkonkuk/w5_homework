Rails.application.routes.draw do
  
  devise_for :users
  resources :posts, :informs
  get '/informs', to: 'informs#home'
  
  root "informs#main"
  post "/like", to: "likes#like_toggle"
  
  
end