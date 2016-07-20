Rails.application.routes.draw do
  root 'static_pages#index'

  get 'static_pages/about'

  get 'products', to: 'products#index'
end
