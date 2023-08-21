Rails.application.routes.draw do
   root 'lists#index'
  resources :lists, only: [:index, :show, :new, :create, :destroy] do
   resources :bookmarks, only: [:new, :create]
  end
  # resources :lists, only: :destroy
  resources :bookmarks, only: :destroy
end
