Rails.application.routes.draw do
  root 'pages#index'

  namespace :api do
    namespace :v1 do
      resources :airlines, param: :slug
      resources :analysis, only: [:create, :destroy]
    end
  end
  get '*path', to: 'pages#index', via: :all
end
