Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :restaurants, only: [:index, :show, :new, :create] do
      resources :reviews, only: [:new, :create]
  end
  # resources :restaurants, only: [:index, :new, :create, :show] do
    # member do
    #   resources :reviews, only: [:new, :create]
    # end
  # end

end
