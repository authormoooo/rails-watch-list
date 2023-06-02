Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :lists, only: %i[index show new destroy] do
    resources :bookmarks, only: %i[index show new create]
  end

  post 'lists', to: 'lists#create'
end
