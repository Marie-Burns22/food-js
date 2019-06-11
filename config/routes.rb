Rails.application.routes.draw do

  root 'welcome/index'
  resources :emissions
  resources :students
  resources :foods, only: [:index, :show, :edit, :update, :destroy]

  get '/signin' => 'sessions#new'

  post '/sessions' => 'sessions#create'

  get '/logout' => 'sessions#destroy'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
