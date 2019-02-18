Rails.application.routes.draw do

  get 'users/new'

  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/login', to: 'static_pages#login'
  get  '/signup',  to: 'users#new'
  post '/signup', to:'users#create'

  root 'users#new'
  get  'users/new',    to: 'users#new'

  resources :users

  root 'microposts#home'

end
