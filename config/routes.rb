Rails.application.routes.draw do
 resources :posts
 root "posts#home"
  get 'about' => 'posts#about'
  get 'contact' => 'posts#contact'

end
