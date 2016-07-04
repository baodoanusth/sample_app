Rails.application.routes.draw do
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

end
