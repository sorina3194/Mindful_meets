Rails.application.routes.draw do
  resources :rooms
  devise_for :users, controllers: {
    sessions: 'users/sessions'
    # registrations: 'users/registrations'
  }
  root to: "pages#home"

  # post "friendship/:id/follow", to: "friendship#follow", as: "follow"
  # post "friendship/:id/unfollow", to: "friendship#unfollow", as: "unfollow"
  # post "friendship/:id/accept", to: "friendship#accept", as: "accept"
  # post "friendship/:id/decline", to: "friendship#decline", as: "decline"
  # post "friendship/:id/block", to: "friendship#block", as: "block"

  post "link_generate/:id", to: "chat_sessions#link_generate", as: "generate_link"
  get "show_profile/:id", to: "pages#show_profile", as: "showprofile"
  post "friendship_request/:id", to: "pages#friendship_request", as: "friendship_request"
  resources :friendships, only: %i[index create destroy]
  resources :feedbacks, only: %i[new create]
  resources :invitations, only: :index

  resources :chat_sessions, only: %i[index show create] do
    resources :invitations, only: %i[new create index show destroy] do
      member do
        patch :accept
      end
    end
  end
end

  # TODO: Chat
  # resources :private_chats, only: %i[show create]
  # resources :feedbacks, only: %i[new create]
