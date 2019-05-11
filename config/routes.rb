Rails.application.routes.draw do
  mount Rswag::Api::Engine => '/api-docs'
  root 'pages#index'

  namespace :api do
    namespace :v1 do
      resources :quotes, only: [:index]
    end
  end

  match '*path', to: 'pages#index', via: :all
end
