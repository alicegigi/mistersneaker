Rails.application.routes.draw do

  devise_for :users
  resources :deals
  # root to: 'pages#home'

end
