Rails.application.routes.draw do
  devise_for :users
  root to: 'properties#index'
  resources :properties, only: %i[index show ]

  # Sidekiq Web UI, only for admins.
  require "sidekiq/web"
  authenticate :user, lambda { |u| u.admin } do
    mount Sidekiq::Web => '/sidekiq'
  end
end
