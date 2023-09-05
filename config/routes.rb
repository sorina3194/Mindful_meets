Rails.application.routes.draw do
  root to: "pages#home"

  resources :rooms

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  post "link_generate/:id", to: "chat_sessions#link_generate", as: "generate_link"
  get "show_profile/:id", to: "pages#show_profile", as: "showprofile"

  resources :friendships, only: %i[index show create destroy] do
    get :requests, on: :collection
  end
  resources :feedbacks, only: %i[new create]
  resources :invitations, only: :index


  resources :chat_sessions, only: %i[index show create] do
    member do
      patch :finish
    end
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
