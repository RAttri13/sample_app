Rails.application.routes.draw do
 
    root 'static_pages#home'
<<<<<<< HEAD
    get '/help', to: 'static_pages#help'
    # help_path name of route
=======
    # help_path name of route
    get '/help', to: 'static_pages#help'
>>>>>>> c817fe7 (Finish layout and routes)
    get '/about', to: 'static_pages#about'
    get '/contact', to: 'static_pages#contact'

    get '/signup', to: 'users#new'
<<<<<<< HEAD
    get 'login',to:'sessions#new'
    post '/login', to: 'sessions#create'
    delete '/logout', to: 'sessions#destroy'

    resources :users
=======
>>>>>>> c817fe7 (Finish layout and routes)
  end


