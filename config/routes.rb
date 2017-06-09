Rails.application.routes.draw do

  resources :blogs do
  resources :comments
  end
  resources :products do
    resources :comments
  end
  devise_for :models
    resources :categories
      resources :books do
  resources :comments
end

resources :models do
  resources :comments
  end
root to: "books#new"
end
