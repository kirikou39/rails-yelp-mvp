Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [:index, :new, :create, :show] do
    resources :reviews, only: [:create]
    # member do
    #   get 'restaurants/:id/reviews/new', to 'reviews#new'
    #   post 'restaurants/:id/reviews', to 'reviews#'
    # end
  end
end
