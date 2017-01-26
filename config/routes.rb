Rails.application.routes.draw do
  devise_for :users
  resources :items do
    member do
      patch :complete
    end
  end
  resources :tags, only: [:index, :show, :tag_cloud]
  root 'items#index'


end
