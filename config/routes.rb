Rails.application.routes.draw do

  devise_for :users
  resources :boards do
    resources :pins
  end
  root to: 'boards#index'

end
