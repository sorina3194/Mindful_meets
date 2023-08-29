Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users, only: [:home, :new, :create, :show]
  resources :users do
    resources :friendship, only: [:home, :new, :create, :show]
    resources :invitations, only: [:home, :new, :create, :show]
    resources :feedbacks, only: [:home, :new, :create, :show]
    resources :privateChats, only: [:home, :new, :create, :show]
  end
end
