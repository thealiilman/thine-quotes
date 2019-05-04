Rails.application.routes.draw do
  mount Rswag::Api::Engine => '/api-docs'
  root 'quotes#index'

  match '*path', to: 'quotes#index', via: :all
end
