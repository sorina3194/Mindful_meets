Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :friendships, only: %i[index create destroy]
  resources :chat_sessions, only: %i[create index show]

  resources :chat_sessions do
    resources :invitations, only: %i[new create index show destroy]
  end

  # resources :feedbacks, only: %i[new create]

  # TODO: Chat
  # resources :private_chats, only: %i[show create]
  # privateChats show
  # privateChats create
end
