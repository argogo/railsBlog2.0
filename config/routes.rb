Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'posts#index', as: 'home'  
  #roots landing page to posts/index 

  get 'about' => 'pages#about', as: 'about'
  #gets pages/about.html.erb

  resources :posts do
    resources :comments
  end
  #gives posts resources

end
