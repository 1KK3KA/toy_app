Rails.application.routes.draw do
  get 'users/login'
  get 'users/signup'
  get 'customers/new'
  get '/signup', to: 'customers#new'
  post '/signup', to: 'customers#create'
  root 'static_pages#home'
  get 'static_pages/home'
  get 'static_pages/about'
  get 'static_pages/contact'
  resources :microposts
  resources :customers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
