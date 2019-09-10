Rails.application.routes.draw do
  devise_for :users
  resources :users, only: :show

  root to: 'pages#home'

  resources :users, only: [:index] do
    member do
      post :follow
      post :unfollow
    end
  end

  #user_chat
  resources :user_chats, only: :create  do
      resources :messages, only: %i[create destroy]
  end

  #faculdade
  resources :faculdades, only: %i[show index] do
    resources :reviews, only: :create
  end

  #curso
  resources :cursos, only: %i[show index]

  #opcao
  resources :opcaos, only: %i[show index]

  #user_opcao
  resources :user_opcaos, only: %i[create new destroy]
end
