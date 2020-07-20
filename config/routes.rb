Rails.application.routes.draw do
  root 'pages#index'
  get 'pages/about'

  # get 'viewers/index'

  # get 'viewers/show'

  # get 'user/index'

  # get 'user/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  
  resources :users, only: :show
end
