Rails.application.routes.draw do
  root 'main#index'

  resources :courses do
    resources :holes
    resources :visits
  end

  devise_for :users

end
