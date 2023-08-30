Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  post '/chat_session', to: 'chat_session#create', as: :chat_session_create

  resources :chat_session, only: %i[index show] do
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
