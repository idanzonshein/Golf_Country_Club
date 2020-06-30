Rails.application.routes.draw do
  root 'main#index'

  resources :courses do
    resources :holes
    resources :visits
  end
  resources :users, only: [:index, :show]


  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
