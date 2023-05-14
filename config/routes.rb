Rails.application.routes.draw do

  resources :lists, only: [:index, :show, :new, :create, :destroy] do
   resources :bookmarks, only: [:new, :create]
  end
  # resources :lists, only: :destroy
  resources :bookmarks, only: :destroy
end
