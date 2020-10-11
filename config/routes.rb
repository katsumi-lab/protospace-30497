Rails.application.routes.draw do
  devise_for :users
  root to: 'prototypes#index'
  #あるprototypeに対するcommentというパス
  resources :prototypes do
    resources :comments, only: :create
  end
  resources :users, only: :show
  resources :users, only: :show
end
