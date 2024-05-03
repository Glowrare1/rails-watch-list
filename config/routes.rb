Rails.application.routes.draw do

  # Defines the root path route ("/")
  # get "lists", to: "lists#index"
  # get "lists/new", to: "lists#new"
  # post "lists", to: "lists#create"
  # get "lists/:id/", to: "lists#show"
  # get "lists/:id/bookmarks/new", to: "bookmarks#new"
  # post "lists/:id/bookmarks", to: "bookmarks#create"

  resources :lists, only: [ :index, :show, :new, :create ] do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: [:destroy]
end
