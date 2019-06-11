Rails.application.routes.draw do
  get 'welcome/index'
  resources :emissions
  resources :students
  resources :foods, only: [:index, :show, :edit, :update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
