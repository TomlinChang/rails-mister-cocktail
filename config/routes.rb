Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  resources :cocktails, only: [ :index, :new, :create, :show ] do
    resources :doses, only: [ :new, :create]
  end
  resources :doses, only: [ :destroy ]
  resources :users, only: [ :index, :new, :create]
end
