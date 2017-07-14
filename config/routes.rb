Rails.application.routes.draw do

  root to: 'users#index'

  resources :restaurants, only: [:index, :show] do
    resources :postings, only: [:new, :create, :update, :edit, :destroy]
    resources :reviews, only: [:new, :create, :destroy]
  end

  resources :workers, only: [:index, :show] do
    resources :comments, only: [:new, :create, :edit, :destroy]
    resources :reviews, only: [:new, :create, :destroy]
    resources :skills, only: [:new, :create, :destroy, :update]
  end

  resources :posting_comments, only: [:new, :create, :destroy]
  resources :restaurant_reviews, only: [:new, :create, :destroy]
  resources :worker_reviews, only: [:new, :create, :destroy]

  resources :acceptances, only: [:index, :show]



  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

end
