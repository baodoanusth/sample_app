Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/new'

  get 'users/new'

  get 'static_pages/home'
  get '/home' => 'static_pages#home'
  get 'static_pages/help'
  get '/help' => 'static_pages#help'
  get '/about' => 'static_pages#about'
  get 'static_pages/about'
  root 'static_pages#home'
  get  'static_pages/contact'
  get '/contact' => 'static_pages#contact'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users
end
