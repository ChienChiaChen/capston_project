Rails.application.routes.draw do
  get 'home' , to: "pages#home"
  # root to: "hello#home"
  get '/' , to: "pages#home"
end
