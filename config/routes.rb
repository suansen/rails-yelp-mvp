Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'restaurants#index'

  resources :restaurants, only: [ :index, :show, :new, :create ] do
    resources :reviews, only: [ :index, :new, :create ]
  end

  # resources :reviews, only: [ :show, :edit, :update, :destroy ]
end
