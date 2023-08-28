Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :friendships, only: [:show, :new, :create, :destroy]

  # friendships show
  # friendships new ??
  # friendships create
  # friendships destroy


  resources :chatSessions, only: [:new, :create, :index,:show]

  # chatsessions new
  # chatsessions create
  # chatsessions show
  # OR LIKE THIS:

  resources :chatSessions do
    resources :invitations, only: [:new, :create, :index, :show]
  end
  # invitations new and create
  # invitations show sent and received
  # invitations destroy


  resources :feedbacks, only: [:new, :create]

  # feedbacks new
  # feedbacks create

  resources :users, only: [:show, :update]

  # users show
  # users update

  resources :privateChats, :only [:show, :create]

  # privateChats show
  # privateChats create
end
