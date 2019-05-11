Rails.application.routes.draw do
  mount Rswag::Api::Engine => '/api-docs'
  root 'pages#index'

  match '*path', to: 'pages#index', via: :all
end
