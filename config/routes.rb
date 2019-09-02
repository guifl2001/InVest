Rails.application.routes.draw do
  devise_for :users
  resources :users, only: :show

  root to: 'pages#home'

  #faculdade
  resources :faculdades, only: %i[show index]

  #curso
  resources :cursos, only: %i[show index]

  #opcao
  resources :opcaos, only: %i[show index]

  #user_opcao
  resources :user_opcaos, only: %i[create new delete]
end
