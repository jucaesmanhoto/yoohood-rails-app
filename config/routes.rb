Rails.application.routes.draw do
  root to: 'pages#home'

  resources :places, only: :index
  resources :events
end
