Rails.application.routes.draw do

  get '/' => 'sessions#welcome'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/signup' => 'students#new'

  delete '/logout' => 'sessions#destroy'

  get '/logout' => 'sessions#destroy'
  resources :emissions, only: [:new, :create, :edit, :update, :destroy, :index]
  resources :students
  resources :foods, only: [:index, :show, :edit, :update, :destroy]  #should emissions be nested under foods or students?
  # resources :sessions



end
