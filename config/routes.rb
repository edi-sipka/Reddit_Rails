Rails.application.routes.draw do
  devise_for :accounts
  get "u/:username" => "public#profile", as: :profile

  root to: "public#index"

  resources :subscriptions
  resources :comments, only: [:create]
  
  resources :communities do
  resources :posts
  end

end
