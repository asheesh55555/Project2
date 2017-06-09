Rails.application.routes.draw do

  devise_for :models
    resources :categories
      resources :books do
  resources :comments
  

end
root to: "books#new"
end
