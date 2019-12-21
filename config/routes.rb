Rails.application.routes.draw do
  root "static_pages#home"
  get "help" => "static_pages#help"
  get "about" => "static_pages#about"
  get "contact" => "static_pages#contact"
  get "signup" => "users#new"
  get "login" => "sessions#new"
  post "login" => "sessions#create"
  get "show" => "users#show"
  delete "logout" => "sessions#destroy"
  
  get "past" => "users#past"

  get "pastdetail/:id" => "users#pastdetail", as: :pastdetail

  resources :users do
  end

  resources :account_activations, only: [:edit]
  resources :password_resets, only: [:new, :create, :edit, :update]
  resources :relationships, only: [:create, :destroy]
  resources :users
end
