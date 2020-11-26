Rails.application.routes.draw do
  resources :cocktails, only: [:index, :new, :create, :show] do
    resources :doses, only: [:new, :create]
  end
  # resources :ingredients do
  #   resources :doses, only: [:new, :create]
  # end
end
