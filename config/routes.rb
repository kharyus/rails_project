Rails.application.routes.draw do
  get 'products/index'
  get 'products/:id', to: 'products#show', as: 'product'
  get 'products', to: 'products#index'

  get 'magic/index'
  get 'magic/:id', to: 'magic#show', as: 'magic'
  get 'magic', to: 'magic#index'

  get 'pages/index'
  get 'pages/about'
  get 'about', to: 'pages#about'

  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
