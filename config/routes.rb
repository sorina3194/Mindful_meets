Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :chat_sessions, only: %i[index show create] do
    resources :invitations, only: %i[new create index show destroy] do
      member do
        patch :accept
      end
    end
  end

  resources :friendships, only: %i[index create destroy]
  resources :feedbacks, only: %i[new create]

  # TODO: Chat
  # resources :private_chats, only: %i[show create]
  # privateChats show
  # privateChats create
end
