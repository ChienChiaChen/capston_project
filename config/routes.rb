Rails.application.routes.draw do
  # get 'users/new'
  resources :users
  get 'signup'  => 'users#new'
  
  # get 'home' , to: "pages#home"
  get 'home', controller: 'pages'
  get 'about', controller: 'pages'
  get :form, controller: :pages 
  # get 'about', to: "pages#about"
  # get 'history', to: "pages#history"
  # get 'new', to: "pages#new"
  root "pages#home"

  # get '/' , to: "pages#home"
end
