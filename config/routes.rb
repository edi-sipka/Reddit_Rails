Rails.application.routes.draw do
  devise_for :accounts

  root to: "public#index"
  
  resources :communities do
  resources :posts
  end
end
