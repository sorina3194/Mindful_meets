Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :chat_sessions, only: %i[create show] do
    resources :invitations, only: %i[new create index show destroy]
  end
  post '/chat_sessions', to: 'chat_sessions#create'
  resources :friendships, only: %i[index create destroy]
  resources :feedbacks, only: %i[new create]

  # TODO: Chat
  # resources :private_chats, only: %i[show create]
  # privateChats show
  # privateChats create
end
