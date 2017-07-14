Rails.application.routes.draw do



  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  get 'users/create'

  resources :restaurants, only: [:index, :show] do
    resources :postings, only: [:new, :create, :update, :destroy]
    resources :reviews, only: [:new, :create, :destroy]
  end

  resources :workers, only: [:index, :show] do
    resources :comments, only: [:new, :create, :destroy]
    resources :reviews, only: [:new, :create, :destroy]
    resources :skills, only: [:new, :create, :destroy, :update]
  end

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/login' => 'sessions#destroy'
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

end
