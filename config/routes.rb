Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get 'lists', to: 'lists#index'
  # get 'lists/:id', to: 'lists#show'
  # get 'lists/new', to: 'lists#new'
  # post 'lists', to: 'lists#index'
    resources :lists, only: [ :new, :create , :index, :show ] do
      resources :bookmarks, only: [ :new, :create ]
    end
    resources :bookmarks, only: [:destroy]
end
