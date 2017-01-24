Rails.application.routes.draw do
  devise_for :users
  resources :items do
    member do
      patch :complete
    end
  end
  resources :tags, only: [:index, :show]
  root 'items#index'


end
