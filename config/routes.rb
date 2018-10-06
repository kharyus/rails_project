Rails.application.routes.draw do
  get 'products/index'
  get 'products/show'
  get 'magic/index'
  get 'magic/show'
  get 'pages/index'
  get 'pages/about'
  get 'about', to: 'pages#about'

  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
