Rails.application.routes.draw do
  devise_for :users
  resources :students, only: :index
end
