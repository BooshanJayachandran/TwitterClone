Rails.application.routes.draw do
  # get 'sessions/new'
  # get 'users/new'

  # get 'static_pages/home'
  # get 'static_pages/help'
  # get 'static_pages/about'
  # get 'static_pages/contact'
  # root 'static_pages#home'  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
  get '/help',to: 'static_pages#help'
  get '/about',to: 'static_pages#about'
  get '/contact',to: 'static_pages#contact'
  get '/signup',to: 'users#new'
  get '/login',to: 'sessions#new'
  post '/login',to: 'sessions#create'
  get '/logout',to: 'sessions#destroy'
  resources :users
  resources :microposts, only: [:create, :destroy]

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
