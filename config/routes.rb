Rails.application.routes.draw do
  devise_for :users
  resources :students
end
