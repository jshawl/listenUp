Rails.application.routes.draw do

  devise_for :users
  authenticate :user do
  	resources :narrators, only: [:new, :create, :edit, :update, :destroy]
  end
  resources :narrators, only: [:index, :show]

  root to: 'narrators#index'
  resources :audiobooks

  post "/search", to: "search#index"

end
