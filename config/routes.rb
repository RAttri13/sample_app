Rails.application.routes.draw do
 
    root 'static_pages#home'
    # help_path name of route
    get '/help', to: 'static_pages#help'
    get '/about', to: 'static_pages#about'
    get '/contact', to: 'static_pages#contact'

    get '/signup', to: 'users#new'
    resources :users
  end


