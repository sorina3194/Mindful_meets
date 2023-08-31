Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
    # registrations: 'users/registrations'
  }
  root to: "pages#home"

  get "show_profile/:id", to: "pages#show_profile", as: "showprofile"
  resources :friendships, only: %i[index create destroy]
  resources :feedbacks, only: %i[new create]
  resources :invitations, only: :index

  resources :chat_sessions, only: %i[index show create] do
    resources :invitations, only: %i[new create index show destroy] do
      member do
        patch :accept
        get :link_generate
      end
    end
  end
 end




  # TODO: Chat
  # resources :private_chats, only: %i[show create]
  # resources :feedbacks, only: %i[new create]
