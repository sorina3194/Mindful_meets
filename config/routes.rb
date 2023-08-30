Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
    # registrations: 'users/registrations'
  }
  root to: "pages#home"

  post '/chat_session', to: 'chat_session#create', as: :chat_session_create

  resources :friendships, only: %i[index create destroy]
  resources :feedbacks, only: %i[new create]
  resources :chat_session, only: %i[index show] do
    resources :invitation, only: %i[new create index show destroy]
  end

  # TODO: Chat
  # resources :private_chats, only: %i[show create]
  # resources :feedbacks, only: %i[new create]
