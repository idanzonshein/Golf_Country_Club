Rails.application.routes.draw do
  root 'main#index'

  resources :courses do
    resources :holes
    resources :visits, except: [:update, :edit]
  end

  devise_for :users

end
